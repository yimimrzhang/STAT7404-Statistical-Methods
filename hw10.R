# =========== #
# Homework 10 #
# =========== #


# Problem 7.7  
# ===========
qchisq(0.005,149)    # compute chi2 critical value with (left area,df)
qchisq(0.995,149)
qchisq(0.99,149)


# Problem 7.14  
# ============
qf(0.975,24,19)      # compute F critical value with (left area,df1,df2)
qf(0.025,24,19)
1/qf(0.975,19,24)


# Problem 10.29 
# =============
obs <- c(238,32,12,13,5)
null.p <- c(0.8,0.1,0.05,0.03,0.02) 
chisq.test(obs,p=null.p)


# Additional Problem
# ==================
tab1 <- cbind(c(58,51,61),c(71,90,160))
dimnames(tab1) <- list(rank=c("Assistant Prof.","Associate Prof.","Prof."),
                       gender=c("Female","Male"))
tab1        # Contingency table
chisq.test(tab1)

tab2 <- cbind(c(109,61),c(161,160))
dimnames(tab2) <- list(rank=c("Non-Prof.","Prof."),
                       gender=c("Female","Male"))
tab2        
chisq.test(tab2, correct=F)   # By default, continuity correction is used for 2*2 cases

