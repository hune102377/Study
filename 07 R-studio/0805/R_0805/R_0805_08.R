# 8. 데이터 전처리 (2)
# 선택, 집계, 분리, 결합, 정렬


# subset() : 필요한 데이터를 추출
st <- data.frame(state.x77)

# 인구가 가장 많은 도시의 3번째와 6번째 칼럼을 넣기
st[st$Population == max(st$Population), c(3,6)]

# 이를 subset으로 하기
subset(st,
       subset = st$Population == max(st$Population),
       select = c(3,6))

set <-iris[iris$Species == 'setosa',]
vrs <-iris[iris$Species == 'versicolor',]
vir <-iris[iris$Species == 'virginica',]

sp <- split(iris, f = iris$Species)
length(sp)
names(sp)
class(sp)

sp$setosa
sp$versicolor
sp$virginica

dim(sp$setosa)

df.2 <- rbind(sp$setosa, sp$versicolor)
dim(df.2)

# merge() 함수

library(readxl)
df.1 <- read_excel("성적표.xlsx", sheet =1)
df.2 <- read_excel("성적표.xlsx", sheet =2)
df.1
df.2

df <- merge(df.1, df.2, all=T,
      by.x = c('번호','이름'),
      by.y = c('No', '이름')
)

df

df$`Deep Learning`

str(df)

colnames(df) <- c('no',
                  'name',
                  'python',
                  'r',
                  'ml',
                  'dl',
                  'cloud'
                  )

# aggregate 함수
df <- iris
# 품종으로 구분되어 1~4번째 평균의 집합
aggregate(df[, -5],
          by = list(품종 = df$Species),
          FUN = mean)

# 품종으로 구분되어 1~4번째 표준편차차의 집합
aggregate(df[, -5],
          by = list(품종 = df$Species),
          FUN = sd)

library(MASS)
data('survey')
df <- survey
str(df)

df <- na.omit(df)
dim(df)

hist(df[df$Sex == 'Male', ]$Height, breaks = 20)
hist(df[df$Sex == 'Female', ]$Height, breaks = 20)

mean(df[df$Sex == 'Male', ]$Height)
mean(df[df$Sex == 'Female', ]$Height)

aggregate(df[,c(10,12)],
          by = list(Gender = df$Sex),
          FUN = mean)     

table(df$Sex)
t.test(Height ~ Sex, data = df)

boxplot(Height ~ Sex, data = df,
        col = c('orange', "tomato"))

#sort(), order()
mtcars$mpg
sort(mtcars$mpg) # 있는 값들을 정렬

order(mtcars$mpg) # 정렬한 값들의 기존 인덱스 번호를 반환환

v <- c(30, 50, 20, 40, 10)
sort(v)
order(v)

df <- data.frame(state.x77)
str(df)

sort(df$Illiteracy, decreasing = T)

ord <- order(df$Illiteracy, df$Income, decreasing = T)
df[ord[1:10], c(3,2)]

# sample(범위, 갯수, replace(복원여부))
sample(1:10, size = 5)

s <- 0
for (i in 1:1000000) {
  x <- sample(1:10, size = 5)
  s <- s + sum(x ==7)
}
s
