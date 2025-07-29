using Flatom
using Documenter

DocMeta.setdocmeta!(Flatom, :DocTestSetup, :(using Flatom); recursive=true)

makedocs(;
    modules=[Flatom],
    authors="Anton Oresten <antonoresten@gmail.com> and contributors",
    sitename="Flatom.jl",
    format=Documenter.HTML(;
        canonical="https://MurrellGroup.github.io/Flatom.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MurrellGroup/Flatom.jl",
    devbranch="main",
)
