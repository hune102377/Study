install.packages('palmerpenguins')
library(palmerpenguins)
df <-  na.omit(penguins)

# 종별 비율 표시
table(df$species)
prop.table(table(df$species))

tapply(df$species,
       INDEX = list(df$species),
       FUN = length)

# 각 종별로 어떤 섬에 서식하고 있는지 교차표를 만들어보자.
table(df$island, df$species)

# gmodels 패키지의 CrossTable() 함수를 이용하여 교차표를 만들어보자
install.packages('gmodels')
library(gmodels)
CrossTable(df$species, df$island)

# 4가지 수치형 변수의 파티션을 par()함수를 통해서 히스토그램을 그려보자
par(mfrow = c(1, 4))
hist(df$bill_length_mm, col = 'brown')
hist(df$bill_depth_mm, col = 'blue')
hist(df$flipper_length_mm, col = 'red')
hist(df$body_mass_g, col = 'green')
par(mfrow = c(1,1))


#psych 패키지의 describe() 함수를 활용해서 컬럼별 정보를 확인해보자
install.packages('psych')
library(psych)
describe(df)


tapply(df$bill_depth_mm,
       INDEX = list(speceis = df$species),
       FUN = mean)

#
boxplot(flipper_length_mm ~ species,
        data = df,
        col = 2:4)

describe(df$flipper_length_mm)

df[df$flipper_length_mm == boxplot.stats(df$flipper_length_mm)$out,]

df <-  data.frame(df)
adelie <- split(df, df$species)$Adelie
adelie
outlier <- boxplot.stats(adelie$flipper_length_mm)$out
outlier
df[df$flipper_length_mm %in% outlier,]


ord <- order(df$flipper_length_mm, -df$body_mass_g)
ord

df[ord,]
head(df[ord, 5:6], n = 10)
