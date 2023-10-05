using LightMC
using Test
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

@testset "LightMC.jl" begin
    @test parameter.nxe == 512
    @test size(ϕps) == (36,)
    @test ηy[end,end]==ηy[1,1]
end
