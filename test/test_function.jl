using LightMC
using Test 
using YAML
using HDF5
using Random

parameter = LightMC.readparams()
ϕps,θps = LightMC.phasePetzold()

η=zeros(parameter.nxs,parameter.nys)
ηx=zeros(parameter.nxs,parameter.nys)
ηy=zeros(parameter.nxs,parameter.nys)

fid=h5open("surfwave1.h5","r")
η0=read(fid,"eta")
ηx0=read(fid,"ex")
ηy0=read(fid,"ey")
close(fid)
    
LightMC.convertwave!(η,ηx,ηy,η0,ηx0,ηy0,parameter.kbc)

@testset "Initial Condition" begin
    @testset "readparams()" begin
        @test parameter.kbc >= 0
    end
    @testset "convertwave()" begin
        if parameter.kbc == 0
            @test ηy[end,end] == ηy[1,1]
        else
            @test ηy[1:size(η0,1),1:size(η0,2)] == ηy0
        end
    end
    @testset "phasePetzold()" begin
        @test size(ϕps) == (36,)
        @test size(θps) == (36,)
    end
end

xpb,ypb,zpb,θ,ϕ,fres = LightMC.interface(η,ηx,ηy,parameter)

@testset "Refraction between atmosphere and water" begin
    @testset "interface()" begin
        @test size(fres) == (parameter.nxp,parameter.nyp)
        @test size(θ) == (parameter.nxp,parameter.nyp)
        @test size(ϕ) == (parameter.nxp,parameter.nyp)
    end 
end

allind = 1:parameter.nphoton
ed = zeros(parameter.nx, parameter.ny, parameter.nz)
esol = zeros(parameter.num, parameter.nz)
randrng = MersenneTwister(1234)
area=zeros(4)
interi=zeros(Int64,4)
interj=zeros(Int64,4)
ix=div(p.nxη,2)+1
iy=div(p.nyη,2)+1

transfer!(ed,esol,θ[ix,iy],ϕ[ix,iy],fres[ix,iy],ip,xpb[ix,iy],
        ypb[ix,iy],zpb[ix,iy],area,interi,interj,randrng,η,ϕps,θps,p,1)

@testset "Monte Carlo Simulation" begin
    @testset "transfer()" begin
        @test ed(ix,iy,parameter.ztop+1) != 0
    end 
end