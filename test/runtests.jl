using LightMC
using Test
using HDF5

parameter = LightMC.readparams()
ϕps,θps = LightMC.phasePetzold()

@testset "LightMC.jl" begin
    @test parameter.nxe == 512
    @test size(ϕps) == (36,)
end
