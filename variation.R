# Web Hits Example
# ================
hits<-c(10,12,15,15,16,16,17,20,20,21,24,25,27,32,45)
summary(hits, quantile.type=2) # Provide 5 # summary & mean
IQR(hits, type=2)              # Compute IQR
var(hits)     # Compute variance
sd(hits)      # Compute standard deviation

boxplot(hits, ylab="# web hits per month")  # Create a boxplot