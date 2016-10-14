n=100000
x=runif(n)
y=runif(n)
plot(x,y)
hist(x, y)

4*sum(x^2 + y^2 <1)/(n)

4*mean(x^2 + y^2 <1) // Monte Karlo modeliavimas

################################################

n=1000
f<-function(x) sin(x)/x
x=runif(n, 0, 3)
y=runif(n)

plot(x,  y)
curve(f, 0, 3, ylim=0:1, add=TRUE, col=2, lwd=2)

mean(f(x)>y)

integrate(f, 0 ,3)
##########
ind=f(x)>y
plot(x[ind],y[ind], pch=1)
points(x[!ind], y[!ind], pch=4)
curve(f,0,3, ylim=0:1, add=TRUE, col=2, lwd=2)

3*mean(ind)
integrate(f, 0, 3)

##########
n=10
x=rnorm(n)
xbar= replicate(1000, mean(rnorm(n)))

curve(dnorm, -3, 3, ylim=c(0,1.5))
curve(dnorm(x,sd=sqrt(1/n)), -3, 3, ylim=c(0, 1.5))

lines(density(xbar), col=2)

##########

curve(dnorm(x, mean=3, sd=2), -3, 12)

1-pnorm(10, 3, 2) ## tikimybe, kad igis reiksme daugiau nei 10





