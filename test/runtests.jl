using LightMC
using Test 
using YAML
using MPI
using UnicodePlots

ncpumax = length(Sys.cpu_info())

ic,jc,kc = [2,2,2]
if ic * jc * kc > ncpumax
   ic,jc,kc = [1,1,1]
end

ncpu = ic * jc * kc

MPI.install_mpiexecjl(force=true)
mpicmd = joinpath(DEPOT_PATH[1], "bin/mpiexecjl")

@testset "LightMC.jl" begin
    @info "testing the functions being used in lightMC.jl package"
    run(`julia test_function.jl`)
    
    @info "testing with [$ic, $jc, $kc] cpu via MPI package"
    run(`$mpicmd -n $ncpu julia $(joinpath(@__DIR__, "test_mpi.jl")) $ic $jc $kc`)
end 