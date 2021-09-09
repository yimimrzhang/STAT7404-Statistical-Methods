# Problem 3-47
# ============
towels <- read.csv("Data/prob3-47.txt") # Reads in the paper towel data
boxplot(towels$PriceperRoll,            # Boxplot of prices per roll
  ylab="Price per Roll",
  main="Boxplot of Price per Roll")     
boxplot(towels$SheetsperRoll,           # Boxplot of sheets per roll
  ylab="Number of Sheets per Roll",
  main="Boxplot of Number of Sheets per Roll")

# Additional Problem 1
# ====================
nitrogen <- read.csv("Data/nitrogen.txt") # Reads in the nitrogen data
summary(nitrogen,quantile.type=2)         # Summary of nitrogen data
sd(nitrogen$nitrogen)                     # SD of nitrogen values
nitrogen$nitrogen[31] <- 15.19            # Changes 31th value to 15.19
sd(nitrogen$nitrogen)                     # Recomputes the SD
nitrogen$nitrogen[31] <- 151.9            # Changes 31th value to 151.9
sd(nitrogen$nitrogen)                     # Recomputes the SD

# Additional Problem 2
# ====================
diseases <- read.csv("Data/diseases.txt") # Reads in the diseases data
sort(diseases$Tuberculosis)               # Sorts the TB cases data
boxplot(diseases[,2:4],                   # Side-by-side boxplots of
  ylab="Number of Reported Cases in 2001")# number of cases for the 3 disease types
