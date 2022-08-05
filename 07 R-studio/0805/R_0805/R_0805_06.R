# 06. 데이터 프레임
# 변수는 열로, 관측값은 행으로 저장
# 데이터프레임은 백터의 리스트라고 생각할수도 있음

df <- iris # 원본데이터 보호 목적으로 df 데이터 프레임에 iris 복사

str(df) # desc
class(df) # type
dim(df) # dimension
nrow(df) # length_row
ncol(df) # length_columns

rownames(df)
colnames(df)

v <- c(85, 77, 96)
v

names(v) # v라는 변수의 vector별 이름 확인
names(v) <- c('kor', 'eng', 'math') # v라는 변수의 vector별 이름 설정정
names(v)
v

v['kor'] # 이제 이름으로 vector 추출 가능능
v[c('kor', 'math')]

df$Sepal.Length
df$Sepal.Width


df$Sepal.Sum <- df$Sepal.Length + df$Sepal.Width # 두 컬럼을 합쳐 새로운 컬럼 만들기기

str(df)

head(df)

class(ifelse(df$Sepal.Sum > mean(df$Sepal.Sum),'Big','Small'))

# 논리연산자를 이용한 factor 열 추가
df02 <- factor(ifelse(df$Sepal.Sum > mean(df$Sepal.Sum),'Big','Small'))
df02
str(df02)
class(df02)
levels(df02)
table(df02)

barplot(table(df02),
     col = 'cyan')

#
?state.x77
class(state.x77)
# 현재 데이터가 matrix 형태이니까 데이터프레임으로 바꿔주자
st <- as.data.frame(state.x77)
class(st)
str(st)
dim(st)

colnames(st)
rownames(st)

rownames(st[st$Murder == max(st$Murder),])
rownames(st[st$Population == min(st$Population),])
plot(st$Illiteracy, st$`HS Grad`,
     main = "문맹률과 고등학교 졸업률 간의 상관관계",
     xlab = "문맹률",
     ylab = "고등학교 졸업률",
     col = 'green',
     pch = '+')

st["Washington",]
st["Washington","Income"]
st[,"Income"]

# 데이터프레임의 저장과 불러오기
# csv 파일 활용 : read.csv(), write.csv(데이터, '파일명')
# 엑셀 파일 직접 읽어오기 : readxl 패키지의 read_excel()

df <- iris
df$Sepal.Sum <- df$Sepal.Length + df$Sepal.Width
write.csv(df, 'my.iris.csv', row.names = F)
getwd()

?write.csv

df_02 <-  read.csv('my.iris.csv')
df_02
df_02$Sepal.Sum
max(df_02$Sepal.Sum)
rownames(df_02[df_02$Sepal.Sum == max(df_02$Sepal.Sum), ])

# 엑셀파일 읽어오기
#install.packages('readxl')
library(readxl)
df <-  read_excel('성적표.xlsx', sheet = 1)

df <- data.frame(df)
str(df)
class(df)

df$평균 <-  round(apply(df[,3:5], MARGIN = 1, mean), digits = 1)

df

?barplot
