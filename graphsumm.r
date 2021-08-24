# Pie Chart of Class Makeup
# =========================
perc <- c(41.9,23.3,14.0,20.9)
prod.lab <- c("Freshman", "Sophomore", "Junior", "Senior")
pie(perc, labels = prod.lab)


# Bar Chart of Class Makeup
# =========================
barplot(perc,xlab="Year in School",ylab="Percent",names.arg=prod.lab)



# Histogram of Weight Guesses 
# ===========================
guess <- read.csv("Data/guess.txt",header=T)
wgtall <- guess$Weight
hbrk1 <- seq(139,204,5)
hist(wgtall,breaks=hbrk1,xlab="Weight (lbs)",ylab="Frequency",
     main="Histogram of Guesses of My Weight (pounds)")


# Stemplot of Weight Guesses 
# ==========================
stem(wgtall)
stem(wgtall, scale=2)   # repeat stem twice
