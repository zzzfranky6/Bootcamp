## 12

nsim <- 100000
nfail <- 0

for(i in 1:nsim){
  x <- runif(2, min = 0, max = 1)
  x <- sort(x)
  l1 <- x[1]; l2 <- x[2] - x[1]; l3 <- 1 - x[2]
  # cat(i, "\n")
  # cat(l1, ", ", l2, ", ", l3, "\n")
  if(max(l1, l2, l3) >= .5){nfail = nfail + 1}
}

p <- 1 - nfail/nsim
p


## 13

nsim <- 100000
nfail <- 0

for(i in 1:nsim){
  x <- runif(1, min = 0, max = 1)
  y1 <- min(x, 1-x)
  y2 <- max(x, 1-x)
  l1 <- y1
  l2 <- runif(1, min = 0, max = y2)
  l3 <- y2 - l2
  # cat(i, "\n")
  # cat(l1, ", ", l2, ", ", l3, "\n")
  if(max(l1, l2, l3) >= .5){nfail = nfail + 1}
}

p <- 1 - nfail/nsim
p


## 14

nsim <- 10000
count_real <- 0
count_postive <- 00
for(i in 1:nsim){
  B <- runif(1, min = -1, max = 1)
  C <- runif(1, min = -1, max = 1)
  # cat("B: ", B, ", C: ", C, "\n")
  # cat("B*B - 4*C", B*B - 4*C, "\n")
  if((B*B - 4*C)>0){count_real = count_real+1}
  if((B*B - 4*C)>0 & B<0 & 0<C){count_postive = count_postive+1}
}
p1 <- count_real/nsim
p2 <- count_postive/nsim

p1
p2






