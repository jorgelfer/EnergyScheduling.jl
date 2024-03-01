module EnergyScheduling

# Write your package code here.
using Expectations, Distributions
import Pkg
Pkg.add("LibGit2_jll")

function foo(mu = 1., sigma = 2.)
    d = Normal(mu, sigma)
    E = expectation(d)
    return E(x -> sin(x))
end

export foo

end
