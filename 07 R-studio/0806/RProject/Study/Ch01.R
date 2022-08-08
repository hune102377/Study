# R에 있는 데이터를 확인 하는 경우 data()
data()

# 특정 데이터의 내용을 확인하고 싶을 때 View(data)
View(iris)

# 특정 데이터 전부의 상점도 그래프를 그릴 때 plot(data)
plot(iris)

# 특정 명령어의 기능을 알고 싶을 때 ?
?plot

# 특정 패키지 다운 명령어 install.packages("패키지명")
install.packages("cowsay")

# 특정 패키지 실행 명령어 library(패키지명) (= import)
library(cowsay)
say("Hello, Chicken", by = "chicken")
