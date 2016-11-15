library(pwr)

#When we know the population R2 is .20
## power for regression with R2=.20 with 3 predictors
f2 <- .20/(1-.20)

pwr.f2.test(u=3,f2=f2, power=.80) #u=3 since 3 predictors
# N = u + v + 1 #v you figure out using pwr.f2.test
N = 3 + 43.7 + 1

#ESTIMATING population coefficient. Guessing. 
library(MBESS)
ci.R2(R2=.20,df.1=3,df.2=127)
## confidence interval goes from .08 to .32
#$Lower.Conf.Limit.R2
#[1] 0.07638635
#$Prob.Less.Lower - saying lower 2.5
#[1] 0.025
#$Upper.Conf.Limit.R2
#[1] 0.3169254
#$Prob.Greater.Upper - saying upper 2.5; means 95% CI 
#[1] 0.025
#interpretation - pop R2 could be as low as .08 and as high as .32

ci.R2(R2=.20, p=3, N=100)
#same ANSWER, different formula. p = number of predictors 

####

#Incrememntal prediction (i.e., power analysis for interactions)
##Assume sr2 = .02, assume R2 = .20 
## f2 <- sr2/(1-R2)

f2 <- .02/(1-.20)
pwr.f2.test(u=1,f2=f2,power=.80) #u=1 since increment of 1 predictor (i.e., power of 1 predictor over others)
##3 b/c number of predictors
##take N from results of pwr.f2.test
N=3+314+1 
