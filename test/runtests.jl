using LightMC
using Test
using HDF5
#include("light.yml")
#include("surfwave1.h5")

parameter = LightMC.readparams()

@testset "LightMC.jl" begin
    @test parameter.nxe == 512
end
