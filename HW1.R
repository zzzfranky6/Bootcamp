## 5.1 
simulation <- matrix(c(rep(1, 100), 
                       rnorm(100), 
                       runif(100)), ncol = 3)

## 5.2 
b <- c(1, 1, 6)

## 5.3
epsilon <- rnorm(100)

## 5.4
y <- simulation %*% matrix(b) + epsilon

## 5.5
dat <- data.frame(y, simulation)
fit <- lm(y~X2+X3, data = dat)
b_hat = solve(qr(simulation), y)

## 5.6
print(b)
print(b_hat)  


## 6
# library(faraway)
dat <- readRDS("faraway/data/Rdata.rds")
dat
