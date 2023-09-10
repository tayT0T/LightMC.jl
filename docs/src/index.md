# LightMC.jl Documentation

```@docs
readparams()
interface!(xpb,ypb,zpb,θ,ϕ,fres,η,ηx,ηy,p)
transfer!()
convertwave!(η::Array{<:Float64,2},ηx::Array{<:Float64,2},ηy::Array{<:Float64,2},
                      η0::Array{<:AbstractFloat,2},ηx0::Array{<:AbstractFloat,2},ηy0::Array{<:AbstractFloat,2},kbc=0::Int64)
applybc!()
exported()
phasePetzold()
updateed!()
applybc!()
```
