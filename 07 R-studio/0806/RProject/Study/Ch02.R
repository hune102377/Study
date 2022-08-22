# 2. 내장 데이터셋 활용

#  데이터 구조, 변수 개수, 변수 명, 관찰치 개수, 관찰치의 미리보기
str(iris)

# 데이터 상위,하위 n개치 관측치 미리보기 (기본값 = 6)
head(iris, 3)
tail(iris, 3)

# 수치형 자료 : 양적 자료, 연속형 자료
# 범주형 자료 : 질적 자료, 명목형 자료

# 자료 유형 파악
class(iris$Species)

# 자료 요약
summary(iris)

# 범주형 자료의 종류 확인
levels(iris$Species)

# 범주형 자료의 종류별 수 확인
table(iris$Species)

# 범주형 자료의 종류별 수를 바 그래프로
barplot(table(iris$Species))

# 평균값
mean(iris$Petal.Length)

# 분산값
var(iris$Petal.Length)

# 표준편차
sd(iris$Petal.Length)

# 도수분포표
hist(iris$Petal.Length, # 데이터
     col = 'tomato', # 색 설정
     main = 'histogram', # 타이틀
     xlab = 'Petal Length', # x라벨
     ylab = 'Count', # y라벨
     xlim = c(0, 8), # x범위
     ylim = c(0, 40) # y범위
     )
