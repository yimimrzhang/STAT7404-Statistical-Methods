# ========== #
# Homework 7 #
# ========== #

# Problem 5.59
# ============
rate <- read.csv("prob5-59.txt")        # Reads in dissolution rate data
qqnorm(rate$results,xlab="Normal Quantiles", # Normal quantile plot for rates
  ylab="Dissolution Rate",cex.lab=1.6,
  cex.axis=1.5,main="Normal Quantile Plot",cex.main=1.8,
  pch=16,cex=1.5,mgp=c(2.7,1,0))
hist(rate$results,xlab="Dissolution Rate",   # Histogram of dissolution rates
  ylab="Frequency",cex.lab=1.6,cex.axis=1.5,
  main="Histogram of Dissolution Rates",
  cex.main=1.8,density=12,angle=45,mgp=c(2.7,1,0))
mean(rate$results)                           # Mean dissolution rate
sd(rate$results)                             # SD of dissolution rates
pt(-1.928,23)                                # Left area of -1.928 in t dist. with 23 d.f.

# Alternatively, verify your results using t.test function 
t.test(rate, alternative="less", mu=20)      # Perform lower-sided test with mu_0=20
t.test(rate, conf.level=0.99)                # Construct CI with conf. level of 0.99


# Additional Problem 2
# ====================
exercise <- read.csv("exercise.txt")  # Reads in exercise capacity data
qqnorm(exercise$capacity,
       xlab="Normal Quantiles",cex.lab=1.6, # Normal prob. plot for exercise capacities
       cex.axis=1.5,main="Normal Quantile Plot",cex.main=1.8,
       pch=16,cex=1.5,mgp=c(2.7,1,0))  
qqline(exercise$capacity)                   # Add a "theoretical" straight line in the plot above
mean(exercise$capacity)                     # Mean exercise capacity
sd(exercise$capacity)                       # SD of exercise capacities
qt(0.975,34)                                # t critical value with 34 d.f.

t.test(exercise$capacity)                   # Exact CI with d.f of 34

