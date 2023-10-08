using LightMC
using Test 
using YAML
using HDF5

@testset "Test importing initial condition parameter, readparams()" begin
    parameter = LightMC.readparams()
    @test parameter.nxe == 511
end

@testset "Test surfave wave geometry, convertwave()" begin
    η=zeros(parameter.nxs,parameter.nys)
    ηx=zeros(parameter.nxs,parameter.nys)
    ηy=zeros(parameter.nxs,parameter.nys)
    
    fid=h5open("surfwave1.h5","r")
    η0=read(fid,"eta")
    ηx0=read(fid,"ex")
    ηy0=read(fid,"ey")
    close(fid)
    
    LightMC.convertwave!(η,ηx,ηy,η0,ηx0,ηy0,parameter.kbc)
    @test ηy[end,end]==ηy[1,1]
end

@testset "Test the Cumulative Distribution variable of the scattering angle, phasePetzold()" begin
    ϕps,θps = LightMC.phasePetzold()
    @test size(ϕps) == (36,)
end
