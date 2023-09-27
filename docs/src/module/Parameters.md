# Coordinate system and notation 

LightMC.jl is formulated in the spherical system ``\hat{\zeta} = (\theta,\phi)``, where polar angle ``\theta`` is measured from the direction of ``\hat{z}`` and the azimuthal ange ``\phi`` is measured positive counter clockwise from ``\hat{x}``, when looking toward the origin along ``\hat{z}``.
Let ``\hat{\xi}`` denoted a unit vector pointing in the desired direction, when ``\hat{\xi}=\left(\xi_{x},\xi_{y},\xi_{z}\right)``, and becasue ``\hat{\xi}`` is of unit length, its component satisfy ``\hat{\xi}_{x}^{2}+\hat{\xi}_{y}^{2}+\hat{\xi}_{z}^{2}=1``. Therefore, 

```math
\hat{\xi} = \begin{bmatrix} \sin(\theta)\cos(\phi)\\ \sin(\theta)\sin(\phi)\\ \cos(\theta) \end{bmatrix}
```
To simplify the term above, we simplify ``\hat{\xi}`` by using the cosine parameter.
```math
\hat{\xi} = \begin{bmatrix}\mu_{x}\\ \mu_{y}\\ \mu_{z} \end{bmatrix} = \begin{bmatrix}\sin(\theta)\cos(\phi)\\ \sin(\theta)\sin(\phi)\\ \cos(\theta) \end{bmatrix} 
```
When we calculate for the scattering direction, our result is in the local coordination system ``(\hat(\theta),\hat(\phi),\hat(r))``, when radial unit vector ``\hat(r)`` is the same initial direction of photons before scattering ``\hat{\xi}``, the azimuthal unit vector ``\hat(\phi)`` is defined by the cross product of the ocean coordinate system ``\hat{z}`` and the incident vector's direction ``\hat{\phi}=\frac{\hat{z}\times\hat{r}}{|\hat{z}\times\hat{r}|}``, and polar unit vector is given by ``\hat{\theta}=\hat{\phi}\times\hat{r}``. 
Therefore, the unit vector of the scattered direction of photons {\hat{\xi}_{s}} can be described in the local coordination system ``(\hat(\theta),\hat(\phi),\hat(r))`` as,
```math
\hat{\xi_(s)} = \begin{bmatrix} \sin(\theta_{s})\cos(\phi_{s})\\ \sin(\theta_{s})\sin(\phi_{s})\\ \cos(\theta_{s}) \end{bmatrix}
```
when, ``\theta_{s}`` and ``\phi_{s}`` is polar angle and azimuthal angle in relative to the local coordinate system ``(\hat(\theta),\hat(\phi),\hat(r))``. 

