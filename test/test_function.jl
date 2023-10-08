using LightMC
using Test 
using YAML
using HDF5

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

@testset "Functions" begin
    @testset "readparams()" begin
        @test typeof(parameter) == Int 
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
