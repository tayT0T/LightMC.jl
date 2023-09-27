# Coordinate system and notation 

LightMC.jl is formulated in the spherical system ``\hat{\zeta} = (\theta,\phi)``, where polar angle ``\theta`` is measured from the direction of ``\hat{z}`` and the azimuthal ange ``\phi`` is measured positive counter clockwise from ``\hat{x}``, when looking toward the origin along ``\hat{z}``.
Let ``\hat{\xi}`` denoted a unit vector pointing in the desired direction, when ``\hat{\xi}=\left(\xi_{x},\xi_{y},\xi_{z}\right)``, and becasue ``\hat{\xi}`` is of unit length, its component satisfy ``\hat{\xi}_{x}^{2}+\hat{\xi}_{y}^{2}+\hat{\xi}_{z}^{2}=1``. Therefore, 

```math
\hat{\xi}_{x}=\sin(\theta)\cos(\phi)\\
\hat{\xi}_{y}=\sin(\theta)\sin(\phi)\\
\hat{\xi}_{z}=\cos(\theta)\\
```