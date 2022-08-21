library(magrittr)
library(dplyr)
library(matlib)
dice <- c(1:6)
simulation <- as.data.frame(matrix(sample(dice, 30000, replace = TRUE), 
                     10000, 3))
simulation <- simulation %>% mutate(sume = V1 + V2 + V3)
table(simulation$sume)

as.integer(5.9)

A = matrix(c(1, 1, 1, 1, 1, 1, -1, -1, 1, -1, 1, -1, 1, -1, -1, 1), byrow = TRUE, nrow = 4, ncol = 4)

solve(A) %*% matrix(c(2, 3, 0, -5), ncol = 1, nrow = 4)

A = matrix(c(4, 4, 4, -2, -3, -6, 1, 3, 6), ncol = 3, nrow = 3, byrow = T)

ev <- eigen(A)

ev$values
ev$vectors

Q = matrix(c(1, 0, 2, -1, 1, 0, 0, 0, 1), 3, 3)
B = matrix(c(-1, 0, 0, 0, 0, 0, 0, 0, 1), 3, 3)
A = Q %*% B %*% solve(Q)
A%*%A%*%A
