using LightMC
using Test 
using YAML
using HDF5
using Random
using UnicodePlots
using Statistics
using MPI 

MPI.Init()
comm = MPI.COMM_WORLD
myid = MPI.Comm_rank(comm)
ncpu = MPI.Comm_size(comm)

@testset "initialize MPI" begin
    @test myid == MPI.Comm_rank(comm)
    @test ncpu == MPI.Comm_size(comm)
end

p = LightMC.readparams("data/initial_condition/light.yml")
ϕps,θps = LightMC.phasePetzold()
allind=CartesianIndices((1:p.nxp,1:p.nyp,1:p.nphoton))

η=zeros(p.nxs,p.nys)
ηx=zeros(p.nxs,p.nys)
ηy=zeros(p.nxs,p.nys)
seedid=rand(1:2000,1)[1]
randrng = MersenneTwister(seedid+myid)  

if myid==0
    fid=h5open("data/initial_condition/surfwave1.h5","r")
    η0=read(fid,"eta")
    ηx0=read(fid,"ex")
    ηy0=read(fid,"ey")
    close(fid)
    convertwave!(η,ηx,ηy,η0,ηx0,ηy0,p.kbc)  
end
MPI.Allreduce!(η,+,comm)
MPI.Allreduce!(ηx,+,comm)
MPI.Allreduce!(ηy,+,comm)

nind=p.nxp*p.nyp*p.nphoton
if mod(nind,ncpu) ==0
    dind=div(nind,ncpu)
else
    dind=div(nind,ncpu) + 1
end
inds=myid*dind+1
inde=(myid+1)*dind
print(inds)
if inde > nind
    inde=nind
end

@testset "Initial condition for MPI" begin
    @test dind >= div(nind,ncpu)
    @test inds > 0 
end





ed = zeros(p.nx, p.ny, p.nz)
esol = zeros(p.num, p.nz)

nout=10000
iout=0
xpb,ypb,zpb,θ,ϕ,fres=interface(η,ηx,ηy,p)

@time begin
    for ind=inds:inde
        ip=allind[ind]
        transfer!(ed,esol,θ[ix,iy],ϕ[ix,iy],fres[ix,iy],ip,
                  xpb[ix,iy],ypb[ix,iy],zpb[ix,iy],area,interi,interj,
                  randrng,η,ϕps,θps,p,1)
    end
end

MPI.Allreduce!(ed,+,comm)
    
if myid ==0
    applybc!(ed,p)
    exported(ed,η,p,"rawdat/case$(icase)/ed","3D",176)
end