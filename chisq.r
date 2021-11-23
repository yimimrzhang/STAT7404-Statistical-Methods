# Seasonal Cold Example 
# =====================
obs <- c(374,292,169,165)
null.p <- c(0.4,0.4,0.1,0.1) 
chisq.test(obs,p=null.p)


# Age vs Political Ideology Example 
# =================================
tab <- rbind(c(83,140,73),c(119,280,161),c(88,284,214))
dimnames(tab) <- list(age=c("Under 30","30-49","50 and over"),
  politics=c("Liberal","Moderate","Conservative"))
tab        # Contingency table
chisq.test(tab)

