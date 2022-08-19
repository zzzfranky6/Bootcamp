library(magrittr)
library(dplyr)
dice <- c(1:6)
simulation <- as.data.frame(matrix(sample(dice, 30000, replace = TRUE), 
                     10000, 3))
simulation <- simulation %>% mutate(sume = V1 + V2 + V3)
table(simulation$sume)
