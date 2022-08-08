#####
# 데이터 전처리(1) 결측치와 이상치
#####

###
# 데이터 전처리
###

# 결측치
# 누락된 관측값, 제거하거나 대체

x <- c(45, NA, 87, 63, 55, NA, 72, 61, 59,68)

mean(x)
# 결측치가 있으면 계산 함수 값이 나오지 않음

mean(x, na.rm = T)
# 결측치를 제거하고 계산 함수 값이 나오지 않음

x[is.na(x)]

x[!is.na(x)] # 결측값을 제외하고 표시

# complete.cases() : 데이터프레임에서 결측치가 포함되지 않는 관측값 확인
df <-  airquality
df[complete.cases(df),]

# VIM 패키지의 aggr() 함수 : 변수별로 결측치의 분포와 발생 패턴을 시각화
library(VIM)
aggr(airquality, prop = F, numbers =T, sortVar = T)

# na.omit()함수 데이터 프레임에서 결측치를 제거
df <- na.omit(airquality)

# mice() 함수 : 결측치를 여러가지 통계적 방법으로 대체
install.packages("mice")
library(mice)
result <-  mice(airquality, method = 'mean', m = 2, maxit = 2)

# 이상치
# 정상적인 데이터 분위 밖에 위치하는 관측값                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
