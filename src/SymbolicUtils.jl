module SymbolicUtils

abstract type Symbolic end

symtype(x) = typeof(x) # For types outside of SymbolicUtils

@noinline function promote_symtype(f, xs...)
    error("promote_symtype($f, $(join(xs, ", "))) not defined")
end

include("symbolic.jl")
include("methods.jl")
include("util.jl")
include("rewrite.jl")
include("simplify.jl")

end # module
