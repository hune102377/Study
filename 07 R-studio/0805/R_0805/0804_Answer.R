# 연습문제  3.1
# 1)
area <- function(v) v ^ 2
x <- c(5, 10, 15)

sapply(x, area)

pi

# 2)
round <- function(r) 2 * pi * r
area_0 <-  function(r) pi * r ^ 2

sapply(x, round)
sapply(x, area_0)


# 피자나라 치킨공주

order <- function(v) ifelse(v%% 15 ==0 , 'Princess', 
                             ifelse(v%%3 == 0, 'pizza',
                                    ifelse(v%%5 == 0, 'chicken', 'diet')))

v<- 1:15
w <- order(v)
w


# 

sum((1:10) ^ 3)

cumsum <- function (x) sum((1:x) ^ 3)

n <-  c(10, 15, 20)

S <-  sapply(n, cumsum)

S

#
div <- function(n) (1:n)[n %% (1:n) == 0]
div(10)


div.1 <- function(n){
  for (i in 1:sqrt(n)){
    if (n %% i == 0){
      cat(i, n/i, '\n')
    }
  }
} 
div.1(10)

