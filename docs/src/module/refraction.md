# Refraction 

Photons refraction between air and water 

## Snell's Law 
angle of reflection 
```math
\theta_{r} = \cos^{-1}|\hat{\xi}'\cdot\hat{n}|
```
When our incoming photon is directly downward: ``\hat{\xi}=\begin{bmatrix}0\\0\\1\end{bmatrix}`` and the normal vector can be defined by
``\hat{n}=\dfrac{1}{\sqrt{1+\left(\eta_{x}\right)^{2}+\left(\eta_{y}\right)^{2}}}\left(-\eta_{x}\hat{i}-\eta_{y}\hat{j}+\hat{k}\right)``
When, ``\eta_{x}`` is the partial derivative the partial derivative of ``\eta`` with respect to x: ``\dfrac{\partial\eta}{\partial x}``
and ``\eta_{y}`` is the partial derivative the partial derivative of ``\eta`` with respect to y: ``\dfrac{\partial\eta}{\partial y}``

Therefore, the angle of reflection, in this module, can be described by 
```math
\theta_{r} = \cos^{-1}\left(\frac{1}{\sqrt{1+\left(\eta_{x}\right)^{2}+\left(\eta_{y}\right)^{2}}}\right)
```

angle of transmission
```math
\theta_{t} = \sin^{-1}\left(\frac{1}{n_{w}}\sin\theta'\right)
```

```math
\theta_{t} = \sin^{-1}\left(\frac{n_{a}}{n_{w}}\sqrt{\frac{\left(\eta_{x}\right)^{2}+\left(\eta_{y}\right)^{2}}{1+\left(\eta_{x}\right)^{2}+\left(\eta_{y}\right)^{2}}}\right)
```


## Fresnel Reflectance 

```math
r(\theta') \equiv r(\hat{\xi}'\cdot\hat{n}) = \frac{1}{2}\left\{\left[\frac{\sin(\theta'-\theta_{t})}{\sin(\theta'-\theta_{t})}\right]^2+\left[\frac{\tan(\theta'-\theta_{t})}{\tan(\theta'-\theta_{t})}\right]^2\right\}
```

```math
r(\theta') \equiv r(\hat{\xi}'\cdot\hat{n}) = \frac{1}{2}\left\{\left[\frac{2\sin(\theta_{t})\cos(\theta')}{\sin(\theta'-\theta_{t})}\right]^2+\left[\frac{2\sin(\theta_{t})\cos(\theta')}{\sin(\theta'+\theta_{t})\cos(\theta'-\theta_{t})}\right]^2\right\}
```

## result  

```math
temx = -\frac{\eta_{x}}{\sqrt{(\eta_{x})^{2}+(\eta_{y})^{2}}}
```
```math
temy = -\frac{\eta_{y}}{\sqrt{(\eta_{x})^{2}+(\eta_{y})^{2}}}
```