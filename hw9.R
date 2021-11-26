# ========== #
# Homework 9 #
# ========== #

# Problem 10.15  
# =============
# install.packages("fastR2")          # Install fastR2 package 
library(fastR2)                       # Load the package
wilson.ci(230,1500,conf.level=0.95)   # One-sample plus-four CI for a proportion

prop.test(230,1500,p=0.5,             # One-sample z-test for a proportion
          alternative="greater",      #  p: hypothesized proportion
          correct=FALSE)              #  correct=TRUE for small sample correction 


# Problem 10.21  
# =============
wilson.ci(5,50)                       # Plus-four CI for new trt proportion
wilson.ci(9,50)                       # Plus-four CI for old trt proportion

prop.test(c(5,9),c(50,50),            # Two sample z-test for comparing two prop.
          alternative="less",         
          correct=FALSE)
prop.test(c(5,9),c(50,50),            # CI for the diff in two prop.
          correct=FALSE)


# Additional Problem 
# ==================
hand <- read.csv("hand.txt",header=T)  # Reads in the dexterity experiment data
diff <- hand$mainhand-hand$offhand          # Differences in no boxes filled (main-off)
mean(diff)                                  # Mean difference
sd(diff)                                    # SD of the differences
t.test(hand$main,hand$offhand,paired=T,     # One-sided paired t-test to compare dexterity
  alternative="greater")                    #   between mainhand and offhand
t.test(diff~hand$sex)                       # Two-sample t-test of differences by sex
sdevs <- tapply(diff,hand$sex,sd)           # SDs of differences by sex




