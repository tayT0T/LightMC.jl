# Fundamental Principle of Monte Carlo Simulation

```math
p_{\Re} (\Re) \equiv \begin{cases}
1 & \quad 0 \leq \Re \leq 1, \\
0 & \quad \Re < 0 \cup \Re < 1.
\end{cases}
```

## The Optical Path Length

```math
r=-\frac{1}{c}\ln{\Re}
```

## Sampling Scattering direction

azimuthal angle in the plane of the scattering event relative to the direction of photons before scattering
``\varphi`` is uniformly distribute between 0 and ``2\pi`` Therefore,
```math
\varphi = 2\pi\Re
```
To find the angle between new trajectory and the direction of photons before scattering, we use the Petzold..

## changing frame of reference 

The result we got from the last section is in the local coordination system ``(\hat(\theta),\hat(\phi),\hat(r))``, when radial unit vector ``\hat(r)`` is the same initial direction of photons before scattering ``\hat{\xi}``, the azimuthal unit vector ``\hat(\phi)`` is defined by the cross product of the ocean coordinate system ``\hat{z}`` and the incident vector's direction ``\hat{\phi}=\frac{\hat{z}\times\hat{r}}{|\hat{z}\times\hat{r}|}``, and polar unit vector is given by ``\hat{\theta}=\hat{\phi}\times\hat{r}``. 
