using Knet, Test

struct Linear; w; b; end

function Linear(inputsize::Int, outputsize::Int)
    Linear(param(outputsize,inputsize), param0(outputsize))
end

function (l::Linear)(x)
    l.w * x .+ l.b
end

#=
projection = Linear(10, 20)
@test size(projection.w) == (20,10)
=#