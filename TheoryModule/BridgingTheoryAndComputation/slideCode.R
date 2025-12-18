## This script has code for visuals used on slides

## Plots illustrating prior distributions -------------

# uniform prior with infinite bounds (not tractable)
curve(dunif(x, min = -1, max = 1),from = -1, to = 1, 
      lwd=4,xlab="",ylab="",yaxt="n",xaxt="n",yaxt="n", col ="#C81F1F")
axis(1, at = c(-1,1), labels = c("-\u221E","\u221E" ),cex.axis = 4)
abline(v = -0, lty=2)

# uniform prior with real boundaries a and b
curve(dunif(x, min = -1, max = 1),from = -1.5, to = 1.5, 
      lwd=4,xlab="",ylab="",yaxt="n",xaxt="n",yaxt="n", col ="#C81F1F",ylim = c(0,1))
axis(1, at = c(-1,1), labels = c("a","b" ),cex.axis = 4)
abline(v = -0, lty=2)


# gaussian distribution centered at 0
curve(dnorm(x, mean = 0, sd = 5),from = -1, to = 1, 
      lwd=4,xlab="",ylab="",yaxt="n",bty="n",xaxt="n", col ="#C81F1F")
axis(side=1, labels = FALSE,lwd=2)
abline(v = 0, lty=2)

# gamma distribution for tau
curve(dgamma(x,shape = 2, scale = 2), from = 0, to = 5,
      lwd=4,xlab="",ylab="",yaxt="n",xaxt="n", col ="#C81F1F")
axis(side=1, labels = FALSE,lwd=2)
abline(v = 0, lty=2)

# gaussian distribution with shading
xcomb <- seq(-1, 1, by = 0.01)
dy <- dnorm(xcomb, mean = 0, sd= 0.2)
plot(xcomb, dy, type="l",xlab="",ylab="",yaxt="n",xaxt="n")
polygon(xcomb, dy,col="#FFC000",border = "#C81F1F",lwd=4)


