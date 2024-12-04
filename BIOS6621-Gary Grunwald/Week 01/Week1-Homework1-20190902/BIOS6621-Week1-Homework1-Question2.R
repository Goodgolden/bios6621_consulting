### BIOS6621 Homework1 Question2
### Patterned data and distributions

# Ex 1:  Use rep and seq to create c(.2,.2,.4,.4,.6,.6,.2,.2,.4,.4,.6,.6,.2,.2,.4,.4,.6,.6)
rep( rep( seq( 0.2, 0.6, by = 0.2), each =2), times = 3)

# Ex 2: Generate a sample of 10000 normal values with mean 10 and sd 4
#       Make a histogram of the values
#       Check that the empirical mean and SD match those used to generate the sample
#       For X~N(10, 16), find Pr(X > 18)
#       For X~N(10, 16), find the value so that 97.5% of the distribution is less than that value
#       Make a smooth line graph of the N(10, 16) density.  Don't superimpose on the histogram.
#       (Hint: Use seq)
set.seed( seed = 5 )
r.norm <- rnorm( n = 10000, mean = 10, sd = 4 )
hist( r.norm, xlab = "N(10, 16) sample" )
mean( r.norm ); sd( r.norm ); summary( r.norm )
p.norm <- pnorm( q = 18, mean = 10, sd = 16  ); p.norm
q.norm <- qnorm( p = .975, mean = 10, sd = 4 ); q.norm
x <- seq( 10 - 4 * 4, 10 + 4 * 4, by = 1 )
d.norm <- dnorm( x, mean = 10, sd = 4 );
plot( x, d.norm, xlab = "X-value", ylab = "Probability Density", type = "l")

# Ex 3: Generate a sample of 10000 values from a Gamma distribution with mean 10 and sd 4
#       Verify empirically that your sample mean and sd are close to 10 and 4
#       This is very useful, when working with a new distn in R (or SAS or ...) it's good to do this
set.seed( seed = 55 )
mu = 10; sigma = 4
s <- sigma ^ 2 / mu; a <- mu / s; 
a; s
r.gamma <- rgamma( n = 1000, shape = a , scale = s)
hist( r.gamma, xlab = "Gamma distribution sample")
mean( r.gamma ); sd( r.gamma ); summary( r.gamma )

