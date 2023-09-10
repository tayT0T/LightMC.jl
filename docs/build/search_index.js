var documenterSearchIndex = {"docs":
[{"location":"#LightMC.jl-Documentation","page":"LightMC.jl Documentation","title":"LightMC.jl Documentation","text":"","category":"section"},{"location":"","page":"LightMC.jl Documentation","title":"LightMC.jl Documentation","text":"readparams()\ninterface!(xpb,ypb,zpb,θ,ϕ,fres,η,ηx,ηy,p)\ntransfer!()\nconvertwave!(η::Array{<:Float64,2},ηx::Array{<:Float64,2},ηy::Array{<:Float64,2},\n                      η0::Array{<:AbstractFloat,2},ηx0::Array{<:AbstractFloat,2},ηy0::Array{<:AbstractFloat,2},kbc=0::Int64)\napplybc!()\nexported()\nphasePetzold()\nupdateed!()\napplybc!()","category":"page"},{"location":"#LightMC.readparams-Tuple{}","page":"LightMC.jl Documentation","title":"LightMC.readparams","text":"readparams(fname=\"light.yml\")\n\nRead parameters from yml file fname. If fname is unspecified, use light.yml as the default file name.\n\n\n\n\n\n","category":"method"},{"location":"#LightMC.convertwave!","page":"LightMC.jl Documentation","title":"LightMC.convertwave!","text":"convertwave!(η, ηx, ηy, η0, ηx0, ηy0, kbc)\n\nConvert the surface wave geometry η0',ηx0', ηy0' toη', ηx',ηy' with the same size as irradiance field.  Can be used for nonperiodic BCkbc=1' (no interpolation) or periodic BCkbc=0' (interpolation using FFT)\n\n\n\n\n\n","category":"function"}]
}
