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
        @test parameter.nxe == 512
    end
    @testset "convertwave()" begin
        @test ηy[end,end]==ηy[1,1]
    end
    @testset "Test the Cumulative Distribution variable of the scattering angle, phasePetzold()" begin
        @test size(ϕps) == (36,)
    end
end
