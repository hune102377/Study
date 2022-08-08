# 연습문제 6.1
# (1)
# state.x77 데이터셋을 st변수에 데이터프레임 형태로 저장
st <- data.frame(state.x77)

# (2)
# st 데이터 프레임의 변수와 관측값의 개수는?
str(st)

# (3)
# 각 주별 소득의 평균은?
mean(st$Income)

# (4)
# 인구가 10,000보다 큰 주의 인구, 소득은?
st[st$Population > 10000,c('Population', 'Income')]

# (5)
# Florida 주의 인구와 소득은?
st['Florida',c('Population', 'Income')]

# (6)
# 인구가 1,000보다 작고, 소득이 4,436보다 작은 주의 모든 정보를 출력하라.
st[st$Population < 1000 & st$Income < 4436,]

# (7)
# 문맹률의 평균을
# - (1) 소득이 5000보다 작은 주에 대해서 구하라.
mean(st[st$Income < 5000,'Illiteracy'])

# - (2) 소득이 5000보다 큰 주에 대해서 구하라.
mean(st[st$Income > 5000,'Illiteracy'])

# 연습문제 6.2
# state.x77 데이터셋에 대하여 

# (1)
# 인구가 1,000보다 작고, 소득이 5,000보다 작은 주의 모든 정보를 구하라.
st[st$Population < 1000 & st$Income < 5000,]

# 연습문제 6.3

# (1)엑셀 파일 만들기
no <- c(1,2,3)
Name <-  c('A', 'B', 'C')
Kor <- c(90, 60, 100)
Eng <- c(70, 40, 50)
Math <-  c(60, 70, 80)

score <- data.frame(no = no, Name = Name, Kor = Kor, Eng = Eng, Math = Math)
write.csv(score, file = 'score.xlsx', row.names = F)
