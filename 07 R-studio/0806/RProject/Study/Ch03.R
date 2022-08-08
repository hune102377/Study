#####
# 03. R의 기본문법
#####

###
# 변수
###

# R에서는 <- 를 사용해 변수를 설정
# =나 ->도 사용할 순 있음
x <- 10
print(x)

# 변수이름의 규칙
# 첫 글자는 반드시 문자나 마침표로 시작해야하며
# 알파벳 대소문자를 구분하니 주의

###
# 산술 연산자
###
a <- 7
b <- 3

a %% b # 나머지 연산자
a %/% b # 몫 연산자자

###
# 조건문
###
# if, elseif, else문
# 주의 else는 반드시 }가 있는 줄에 함께 있어야 함

# 학생의 점수 score에 따라 학점 grade 부여하기
score <-  91

if (score >= 90){
  grade <-  'A'
} else if (score >= 80){
  grade <-  'B'
} else {
  grade <-  'F'
}

grade

###
#반복문
###

# 1에서 10까지 자연수의 합 구하기
# while 문
s <-  0
i <-  1
while (i <= 10){
  s <-  s + 1
  i <-  i + 1
}
s

s <- 0
for (i in 1:10){
  s <-  s + i
}
s

# 임의의 자연수 n에 대하여, n의 약수를 출력하고 개수 구하기
n <-  32
count <- 0
for (i in 1:n){
  if (n %% i == 0){
    cat(i, " ")
    count <- count + 1
  }
}
count

