#RQuantLib examples
library(RQuantLib)
EO <- EuropeanOption("call", 100, 100, 0.01, 0.03, 0.5, 0.4)
print(EO)

summary(EO)

#simple example for EuropeanOptionImpliedVolatility
EOImpVol <- EuropeanOptionImpliedVolatility("call", 
          value=EO$value+0.50, 100, 100, 0.01, 0.03, 0.5, 0.4)
print(EOImpVol)
EOImpVol$impliedVol 

#example of the array-style access 
example(EuropeanOptionArrays) 

#example for DiscountCurves
example(DiscountCurve)
