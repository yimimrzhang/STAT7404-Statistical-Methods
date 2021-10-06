# This function reads in a given sample size, mean mu, standard deviation
# sigma, confidence coefficient, confidence interval type ("sigma" or "s"),
# and the number of simulated samples desired, and returns a count of how
# many of the corresponding confidence intervals captured the true mean mu.

cicapture <- function(n,mu,sigma,CC,citype,nsamp){
  dat <- matrix(rnorm(n*nsamp,mu,sigma),nrow=n)
  means <- apply(dat,2,mean)
  sdevs <- apply(dat,2,sd)
  if (n==1) sdevs <- rep(0,length(sdevs))
  zstar <- qnorm(CC/200+0.5)
  ci.low <- means - zstar*sigma/sqrt(n)
  ci.upp <- means + zstar*sigma/sqrt(n)
  if (citype=="s"){
    ci.low <- means - zstar*sdevs/sqrt(n)
    ci.upp <- means + zstar*sdevs/sqrt(n)
  }
  extremes <- c(min(ci.low),max(ci.upp))
  pdist <- max(abs(extremes-mu))
  plot(c(mu-pdist,mu+pdist),c(0,(120)),
    pch=" ",axes=F,xlab="",ylab="")
  axis(1,at=c(mu-pdist,mu,mu+pdist),labels=c("",mu,""),cex.axis=1.5)
  for (i in 1:nsamp) lines(c(ci.low[i],ci.upp[i]),c(i,i)*100/nsamp)
  lines(c(mu,mu),c(0,101))
  numin <- sum((ci.low<mu)&(ci.upp>mu))
  text(mu,120,paste(numin,"Confidence Intervals Captured the True Mean"),
    cex=1.2)
  text(mu,110,paste("n =",n,"   CI Used ",citype,"   CC =",CC),
    cex=1.2)
  numin
}
