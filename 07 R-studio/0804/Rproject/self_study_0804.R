# 01. R 프로그램 시작
print('hello R!')

# 어떤 데이터들이 있는지 보고 싶을 때
data()

# 특정 데이터를 보고 싶을 때
# ex) iris 데이터
View(iris)

# 특정 데이터들의 모든 데이터 간의 plot을 보고 싶을 때
# ex) iris 데이터의 plot
plot(iris)

# 모르는 함수가 있을 때
# ex) iris 데이터가 궁금함
?iris
# 이러면 Help 창에 관련된 도움말들이 나타남

# 원하는 라이브러리가 있을 때
# ex) cowsay 라이브러리를 불러오고싶을 때
# 파이썬의 import
library(cowsay)

###
# 02. 내장 데이터셋으로 R 프로그래밍 알아보기
###

# 데이터 구조 살펴보기
# 파이썬의 desc
str(iris)
# 몇개의 벡터가 있으며, 컬럼 값이 몇개가 있는지, 각각 컬럼의 데이터 타입과 열의 데이터를 보여줌

# 데이터의 일부분이 보고 싶을 때
head(iris, 3)   # 몇개 보여줄지 지정할 수 있음(default = 6)
tail(iris, 7)   # 뒤에서 지정된 값을 보여줌(default = 6)

# 컬럼의 데이터 타입이 보고 싶을 때
class(iris$Species)

# factor 컬럼의 데이터 종류를 보고 싶을 때
# factor 컬럼이 아닌 경우 Null 값이 출력됨
levels(iris$Species)

# 각 데이터 종류의 수가 보고 싶을 때
table(iris$Petal.Width)

# bar 차트를 그리고 싶을 때
# Species의 각 데이터의 수를 bar 차트로 그리기
barplot(table(iris$Species))

# 특정 컬럼의 평균값
mean(iris$Petal.Length)

# 특정 컬럼의 분산값
var(iris$Petal.Length)

# 특정 컬럼의 표준편차
sd(iris$Petal.Length)

# 특정 컬럼의 최대값과 최소값
max(iris$Petal.Length)
min(iris$Petal.Length)

# 꽃잎의 길이에 대한 도수분포표 그리기
# 색 : 초록
# 표 이름 : histogram of length
# x축 이름 : length
# y축 이름 : count
# x축 범위 : 1~7
# y축 범위 : 0~40
hist(iris$Petal.Length,
     col = 'green',
     main = 'histogram of length',
     xlab = 'length',
     ylab = 'count',
     xlim = c(1, 7),
     ylim = c(0, 40)
     )

# 두 데이터 간의 상관관계표 그리기
# x축 데이터 mtcars의 mpg
# y축 데이터 mtcars의 wt
# 색 : tomato
# 모양 : 19번째
plot(mtcars$mpg,
     mtcars$wt,
     col = 'tomato',
     pch = 19
     )

###
# 3. R언어의 기본문법
###

# 1. 변수
x = 1
x
x <- 2
x
3 -> x
x

# 2. 연산자
a = 7
b = 3

# 산술연산자
a + b # 더하기
a - b # 빼기기
a * b # 곱하기
a / b # 나누기
a %% b # 나머지
a %/% b # 몫 연산
a ^ b # 제곱(1)
a ** b # 제곱(2)

# 논리연산자
# !, &, |

c = TRUE
# 3. 조건문
if (c == TRUE){
  print('a는 참입니다')
} else if (c != TRUE){
    print('a는 참이 아닙니다')
} else {
  print('몰?루')
}

# 4. 반복문
while (condition) {
  condition.trur.statement
}

for (variable in start:end) {
  loo.statements
}

###
# 04. 벡터의 이해
###

# 1. 벡터
# R에서 모든 데이터는 벡터로 구성되어있다.
# vector 값이 두개가 들어가는 변수
v1 <- vector(length=2)
v1

# 특정 범위의 값을 모두 벡터에 넣는법 ':'
v2 <- 1:10
v2

# 특정 값을 모두 벡터에 넣는 법 'c()'
v3 <- c(1,2,3,5,7)
v3

# 특정 값을 일정 규칙으로 넣는 법 'seq()'
v4 <- seq(from = 1, to = 10, by = 2)
v4

# 특정 값을 반복해서 넣는 법
v5 <- rep(1:3, each=2, times=2)
v5

v6 <- c(v3, v4)
v6

# 벡터의 인덱싱
# []을 활용
t <- c(10,20,30,40,50,60,70)

t[1]

t[-7]

t[c(1,3,5,7)]

t[c(T,T,F)]

t[t %% 3 == 0]

t[t>30]