using Flatom
using Test

using BioStructures

@testset "Flatom.jl" begin

    @testset "flatoms" begin

        @test flatoms"1ASS" isa Vector{<:NamedTuple}

    end

end
