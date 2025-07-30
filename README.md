# Flatom

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://MurrellGroup.github.io/Flatom.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://MurrellGroup.github.io/Flatom.jl/dev/)
[![Build Status](https://github.com/MurrellGroup/Flatom.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/MurrellGroup/Flatom.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/MurrellGroup/Flatom.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/MurrellGroup/Flatom.jl)

Flatom is a Julia package for converting biomolecular structures to a minimal flat atom format with the following fields:

- `element::Int8`: element number
- `category::Int8`: structure category
  - 1: protein residue
  - 2: nucleic residue
  - 3: other (e.g. hetero)
- `chainid::Int16`: chain identifier
- `resnum::Int32`: residue number (can be optionally renumbered using the MMCIF file)
- `resname::StaticStrings.StaticString{3}`: 3-character alphanumeric residue name
- `atomname::StaticStrings.StaticString{4}`: 4-character alphanumeric atom name
- `x::Float32`, `y::Float32`, `z::Float32`: coordinates

Each atom in this format takes up 28 bytes of memory (not 27 for technical reasons).

## Installation

```julia
using Pkg
Pkg.Registry.add(url="https://github.com/MurrellGroup/MurrellGroupRegistry")
Pkg.add("Flatom")
```
