# 데이터 전처리 (1): 결측치와 이상치

# 결측치
# 누락된 관측값, 제거하거나 대체해야될 값

x <- c(45, NA, 87, 63, 55, NA)
mean(x) # 결측값이 있으면 평균값이 나오지 않음

#
?airquality
str(airquality)

# 결측값이 있는 데이터를 다뤄보자

aq <-  airquality
complete.cases(aq)

aq[complete.cases(aq),] # NA를 제외한 데이터를 불러온다

mean(aq$Ozone, na.rm = T) # NA를 제외한 데이터의 평균

is.na(aq$Ozone) # NA 값인지 아닌지 판별

length(aq$Ozone[is.na(aq$Ozone)]) # Ozone 컬럼에서 NA 갯수 구하기
sum(is.na(aq$Ozone))

ozone <- aq$Ozone
ozone[is.na(ozone)] <-0 # NA값을 0으로 만듬
ozone[is.na(ozone)] <- mean(ozone, na.rm=T)
ozone

# 평균값에는 차이가 없음
mean(aq$Ozone, na.rm =T)
mean(ozone)

# 표준 편차에는 차이가 있음
sd(aq$Ozone, na.rm =T)
sd(ozone)

# 결측값 시각화하는 패키지
install.packages("VIM")
library(VIM)

?aggr
aggr(airquality)

# 이상치 : outliers or anomalies
# 특이값, 정상적인 데이터의 분포 범위 밖에 위치하는 관측값

st <- data.frame(state.x77)
boxplot(st$Income,
        col = 'tomato',
        pch = 19,
        border = 'green')

st[st$Income == max(st$Income),]
st[st$Income == boxplot.stats(st$Income)$out,]

# 범주로 구분할 수 있는 데이터는 범주별로 이상치를 확인할 수 있음
df <- iris
boxplot(df$Petal.Length, col = 'skyblue')

boxplot(Petal.Length ~ Species, data = iris)$out

?boxplot

boxplot(Petal.Width ~ Species, data = iris)$out

outlier <- boxplot.stats(iris[iris$Species == 'setosa',4])$out
outlier

iris[iris$Petal.Width %in% outlier,] # 파이썬의 in과 동일한 기능
