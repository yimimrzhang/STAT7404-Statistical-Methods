# ========== #
# Homework 8 #
# ========== #


# Problem 6-11
# ============
p11 <- read.csv("prob6-11.txt")         # Reads in the Problem 6-11 data
boxplot(p11$Y1982,p11$Y1996,names=      # Boxplot of PCB content by year
  c("1982","1996"),xlab="Year",         # with plot labels, axis labels,
  ylab="Mean PCB Content",main=         # and a title
  "Boxplot of PCB Content by Year",
  cex.lab=1.5,cex.axis=1.5,cex.main=1.6)
t.test(p11$Y1982, p11$Y1996,            # Upper-sided t-test to compare PCB contents
       alternative="greater",mu=0)      # between years
t.test(p11$Y1982, p11$Y1996,            # Confidence interval for the true mean  
       alternative="two.sided",mu=0)    # difference between years


# Additional Problem 1
# ====================
stare <- read.csv("stare.txt")          # Reads in the stare crossing time data
boxplot(time~group,data=stare,names=         # Boxplot of crossing times by stare
  c("No Stare","Stare"),xlab="Group",        #   group with plot labels, axis labels,
  ylab="Crossing Time (seconds)",main=       #   and a title
  "Boxplot of Crossing Times by Group",
  cex.lab=1.5,cex.axis=1.5,cex.main=1.6)
means <- tapply(stare$time,stare$group,mean) # Computes the 2 group means
sdevs <- tapply(stare$time,stare$group,sd)   # Computes the 2 group SDs
t.test(time~group,data=stare,                # Two-sided t-test to compare crossing
  alternative="two.sided",mu=0)              #   times between groups

