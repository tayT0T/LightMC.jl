using LightMC
using HDF5
using Test 
using YAML
using MPI

@testset "LightMC.jl" begin

    @info "testing the functions being used in lightMC.jl package"
    run(joinpath(@__DIR__,test_function.jl))
end
