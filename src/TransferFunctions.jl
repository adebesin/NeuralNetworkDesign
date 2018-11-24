#=
    Activation functions
=#

import Base.MathConstants.e

function hardLimit(n::Number)::Int
    if n >= 0 1
    else 0
    end
end

function symetricalHardLimit(n::Number)::Int
    if n >= 0 1
    else -1
    end
end

function linear(n::Number)::Int
    n
end

function saturatingLinear(n::Number)::Number
    if (n >= 0) & (n <= 1) n
    elseif n < 0 0
    else 1
    end
end

function symetricSaturatingLinear(n::Number)::Number
    if (n <= 1) && (n >= -1) n
    elseif n < -1 -1
    else 1
    end
end

function logSigmoid(n::Number)::Float64
    1/(1 + e)^-n
end

function hyperbolicTangentSigmoid(n::Number)::Float64
    (e^n - e^-n) / (e^n + e^-n)
end
