#=
    Activation functions
=#

import Base.MathConstants.e
import Plots

function hardLimit(n::Number)::Number
    if n >= 0 1
    else 0
    end
end

function symetricalHardLimit(n::Number)::Number
    if n >= 0 1
    else -1
    end
end

function linear(n::Number)::Number
    n
end

function saturatingLinear(n::Number)::Number
    if (n >= 0) && (n <= 1) n
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

function positiveLinear(n::Number)::Number
    if 0 <= n n
    else 0
    end
end

# Max number in culumn == 1 all others in column 0
function competetive(n::Array)::Array
    n
end

competetive([0; 1; -0.5; 0.5])
