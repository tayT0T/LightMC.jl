using Documenter, LightMC

makedocs(
    sitename="LightMC.jl", format = Documenter.HTML(prettyurls = false),
    pages = [
        "Home" => "index.md",
        "Quick Start" => "QuickStart.md",
        "module" => [
        "module/structure.md",
        "Parameters" => "module/Parameters.md",
        "Refraction" => "module/refraction.md",
        "Monte Carlo Simulation" => "module/MonteCarlo.md"
        ]
    ])