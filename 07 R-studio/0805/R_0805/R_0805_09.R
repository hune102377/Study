# 0. 탐색적 데이터 분석
# 데이터에 대한 두가지 접근법
# 확증적 데이터 분석(CDA) : 검정
# 탐색적 데이터 분석(EDA) : 통찰

install.packages('palmerpenguins')
library(palmerpenguins)
data(package = 'palmerpenguins')
data('penguins')

pg <- data.frame(penguins)
str(pg)

library(VIM)
aggr(pg, numbers=T, prop = F)
pg <-  na.omit(pg)
dim(pg)

str(pg)
table(pg$species)
barplot(table(pg$species), col = 'cyan')

table(pg$island)
barplot(table(pg$island), col = 'tomato')

str(pg[,3:6])
summary(pg[,3:6])

par(mfrow = c(1, 4))
hist(pg$bill_length_mm, col = 2:5)
hist(pg$bill_depth_mm, col = 'blue')
hist(pg$flipper_length_mm, col = 'red')
hist(pg$body_mass_g, col = 'green')
par(mfrow = c(1,1))

my.color <- ifelse(pg$species == 'Gentoo', 'tomato',
                   ifelse(pg$species == 'Adelie', 'cyan','yellow'))

cor(pg$bill_length_mm, pg$bill_depth_mm,
     pch = 19, col = my.color)

cor(pg[pg$species == 'Adelie', ]$bill_length_mm,
    pg[pg$species == 'Adelie', ]$bill_depth_mm
    )

?cor
