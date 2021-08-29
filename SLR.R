# Toll Road Example 
# =================
toll <- 100*c(10,15,12,9,11,9,10,9,14,12)     # Vector of toll amounts
dist <- c(93,212,155,57,114,35,88,47,170,114) # Vector of distances traveled

plot(dist,toll,                               # Plot of toll amounts vs. distances
     xlab="Miles Traveled",                   # with x- and y-axis titles
     ylab="Toll Amount (Lire)",   
     main="Scatterplot of Toll Amount vs. Distance") # with overall title

cor(toll,dist)            # Compute correlation coef

reg.out <- lm(toll~dist)  # LS fit of toll amount on distance
summary(reg.out)          # Regression summary
abline(reg.out)           # Plot the regression line

