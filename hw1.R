# Problem 3.21
# ============
eggs <- read.csv("Data/prob3-21.txt")         # Reads in feeder data
mean(eggs$ratio)                              # Mean of DDE/PCB ratios, all data
median(eggs$ratio)                            # Median of ratios for all data
mean(eggs$ratio[eggs$feeder=="Terrestrial"])  # Mean of ratios for terrestrial data
mean(eggs$ratio[eggs$feeder=="Aquatic"])      # Mean of ratios for aquatic data
median(eggs$ratio[eggs$feeder=="Terrestrial"])# Median of ratios for terrestrial data
median(eggs$ratio[eggs$feeder=="Aquatic"])    # Median of ratios for aquatic data
