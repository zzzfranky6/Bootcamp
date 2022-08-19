library(magrittr)
library(dplyr)

simulation <- as.data.frame(matrix(as.integer(runif(3000, min = 1, max = 6)), 
                     1000, 3))
simulation <- simulation %>% mutate(sume = V1 + V2 + V3)
hist(simulation$sume)
