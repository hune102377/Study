# 연습문제 3.1
# (1)
# 한 변의 길이가 x인 정사각형의 넓이 area를 구하는 수식을 만드시오.
sqa_area <- function(x){
  area = (x^2)
  print(area)
}
sqa_area(5)
sqa_area(10)
sqa_area(15)

# (2)
# 반지름의 길이가 r인 원의 둘레 round와 넓이 area를 구하는 수식을 만드시오.
cic_RaA <- function(r){
  round = (2 * pi * r)
  area = (pi * r^2)
  print(round)
  print(area)
}
cic_RaA(5)
cic_RaA(10)
cic_RaA(15)

# 연습문제 3.2
# 피자나라 치킨공주

fuc_order <- function(n){
  order <-'diet'
  if (n %% 3 == 0 & n %% 5 == 0){
    order <-'princess'
  } else if (n %% 3 == 0){
    order <-'pizza'
  } else if (n %% 5 == 0){
    order <-'chicken'
  }
  print(order)
}
fuc_order(6)
fuc_order(10)
fuc_order(13)
fuc_order(15)

# 연습문제 3.3
# (1)
# 임의의 자연수 n에 대하여
# S = 1 + 2^3 + 3^3 + ... + n^3를 구하는 코드를 작성하시오.
fuc_S <- function(n){
  S <- 0
  for (i in 1:n){
    a = i^3
    S = S + a
  }
  print(S)
}
fuc_S(10)
fuc_S(15)
fuc_S(20)
sum(1^3:10^3)

# (2)
# n!를 구하는 코드를 작성하시오.
fuc_fac <- function(n){
  total = 1
  for (i in 1:n){
    total = total * i
  }
  print(total)
}
fuc_fac(10)
fuc_fac(15)
fuc_fac(20)

# 연습문제 3.4
# 자연수 n이 주어졌을 때 1부터 n까지 피자나라 치킨공주 문제의 각 횟수의 결과와 최종 수를 출력하시오.

fuc_3_4 <- function(n){
  pizza = 0
  chicken = 0
  combo = 0
  diet = 0
  for (i in 1:n){
    order <-'diet'
    if (i %% 3 == 0 & i %% 5 == 0){
      order <-'princess'
      combo = combo + 1
      cat(i, 'princess', "\n")
    } else if (i %% 3 == 0){
      order <-'pizza'
      pizza = pizza + 1
      cat(i, 'pizza', "\n")
    } else if (i %% 5 == 0){
      order <-'chicken'
      chicken = chicken + 1
      cat(i, 'chicken', "\n")
    } else {
      diet = diet + 1
      cat(i, 'diet', "\n")
    }
  }
  
  cat("pizza = ", pizza , "\n")
  cat("chicken = ", chicken , "\n")
  cat("combo = ", combo , "\n")
  cat("diet = ", diet , "\n")
}
fuc_3_4(15)

# 연습문제 3.5
# 임의의 홀수 n에 대하여
# 이중 루프를 활용해서 그림을 그려보시오.

# 연습문제 3.6
# 1부터 n까지의 수 중에서
# 소수를 모두 출력하고 소수의 개수를 구하는 코드 작성

for (j in 1:n){
  count = 0
  for (i in 1:k)
    if (k %% i == 0){
      count <- count +1
    }
  }if (count == 2){
  print(k)
}
  
}