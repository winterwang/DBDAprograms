source("DBDA2E-utilities.R")
source("BernBeta.R")

# Specify the prior
t = 0.75  # prior mode 
n = 25    # prior sample size 
a = t*(n - 2) + 1  # convert to beta shape parameter a
b = (1 - t) * (n - 2) + 1 # convert to beta shape parameter b 
Prior = c(a, b)  # specify prior as vector with the two shape parameters 

# Specify the data

N = 20    # total number of flips
z = 17    # the number of heads
Data = c(rep(0, N - z), rep(1, z)) # convert N and z into vector of 0 and 1. 
# openGraph(width = 5, height = 7)

posterior = BernBeta(priorBetaAB = Prior, Data = Data, plotType = "Bars", 
                     showCentTend = "Mean", showHDI = TRUE, showpD = FALSE)
