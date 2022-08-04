# 연습문제 2.1
# iris 데이터셋의 Species 변수를 tomato로 칠하고
# 제목을 '품종의 막대그래프', 가로축을 '품종', 세로축을 '개수'로 설정
plot(iris$Species,
    col = 'tomato',
    main = '품종의 막대그래프',
    xlab = '품종',
    ylab = '개수'
    )

# 연습문제 2.2
# 1) Petal.Width의 평균, 분산, 표준편차를 구하세요.
mean(iris$Petal.Width)
var(iris$Petal.Width)
sd(iris$Petal.Width)

# 2) Petal.Width의 히스토그램을 그리고 꾸며보세요.
hist(iris$Petal.Width,
     col = 'cyan',
     main = '꽃잎의 너비에 대한 히스토그램',
     xlab = 'WIDTH',
     ylab = 'COUNT')

# 연습문제 2.3
# 1) mtcars의 데이터셋에서 마력의 히스토그램을 그리고 
# x축의 범위를 0~400, y축의 범위를 0~12로 설정하세요
hist(mtcars$hp,
     xlim = c(0,400),
     ylim = c(0,12)
     )

# mtcars 데이터셋에서 마력과 연비의 관계를 나타내는 산점도를 그리고 꾸며보세요.
plot(mtcars$hp,
     mtcars$mpg,
     col = 'gold',
     xlab = 'hp',
     ylab = 'mpg',
     pch = 11
     )

# 연습문제 2.4
# 1) cars의 데이터셋에서 변수와 관측값의 개수는 각각 얼마인가?
str(cars)

# 2) speed와 dist 컬럼의
# 평균, 중앙값, 최대값, 최솟값, 1사분위 값, 3사분위 값
summary(cars)

# 3) speed와 dist 변수의 관계를 나타내는 산점도를 그리고 꾸며보세요.
plot(cars$speed,
     cars$dist,
     col = 'purple',
     pch = '+',
     xlim = c(0,30),
     ylim = c(0,150)
     )



# 연습문제 3.1
# 1) 한 변의 길이가 x인 정사각형의 넓이를 구하는 수식을 만드세요
func_area <- function(x) {
  area = x^2
  print(area)
}
func_area(5)
func_area(10)
func_area(15)

# 2) 반지름의 길이가 r인 원의 둘레 round와 넓이 area를 구하는 수식을 만드세요
func_circle <- function(r) {
  pi = 3.14
  round = 2 * pi * r
  area = pi * r^2
  print(round)
  print(area)
}
func_circle(5)
func_circle(10)
func_circle(15)

# 3.2 피자나라 치킨공주
# 양의 정수 n의 값에 따라 order에 다른 값을 할당하세요
# n이 3의 배수이면 피자, 5의 배수이면 치킨, 3과 5의 배수이면 피자나라치킨공주, 그외는 다이어트
func_pizchi <- function(n){
  order = 'diet'
  if (n %% 3 == 0 & n %% 5 ==0){
    order = 'princess'
  } else if (n %% 3 == 0){
    order = 'pizza'
  } else if (n %% 5 == 0){
    order = 'chicken'
  }
  print(order)
}

func_pizchi(6)
func_pizchi(10)
func_pizchi(13)
func_pizchi(15)

# 연습문제 3.3
# 1) 임의의 자연수 n에 대하여
# S = 1 + 2^3 + 3^3 + ... + n^3를 출력하는 코드를 작성
func_S <- function(n){
  total = 0
  for (i in 1 : n){
    total = total + i^3
  }
  print(total)
}
func_S(10)
func_S(15)
func_S(20)

# 2) 임의의 자연수 n에 대하여 n!을 구하는 코드를 작성
func_factor <- function(n){
  total = 0
  for (i in 1 : n){
    total = total + i
  }
  print(total)
}
func_factor(10)
func_factor(15)
func_factor(20)

# 연습문제 3.4
# 피자나라 치킨공주 order를 다 보이고 각 컬럼을 보인다
func_pizchi <- function(k){
  for (n in 1 : k) {
    order = 'diet'
    if (n %% 3 == 0 & n %% 5 ==0){
      order = 'princess'
    } else if (n %% 3 == 0){
      order = 'pizza'
    } else if (n %% 5 == 0){
      order = 'chicken'
    }
    print(order)
  }
}
func_pizchi(15)
cat()
