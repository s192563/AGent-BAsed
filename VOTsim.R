require(VGAM)
install.packages("TruncatedNormal")
require(TruncatedNormal)
#Vector of lognormal can be generated as;
l <- rlnorm(1000, meanlog =0, sdlog=1)
#Vector of truncated normal can be generated as;
x <- rtnorm(n = 1000, mu = 2, lb = 1, ub = 4, method = "fast")
vot <-l/x
#Generate 5%, 50% and 95% quantiles
quantile(vot, c(.05, .50, .95)) 