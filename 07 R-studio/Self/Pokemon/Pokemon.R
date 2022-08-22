df <- read.csv('Pokemon.csv')
df$Primary.Type
summary(df$Primary.Type)
table(df$Primary.Type)
df_Grass <-  df[df$Primary.Type == 'Grass',]
df_UnGrass <- df[df$Primary.Type != 'Grass',]
boxplot(df_Grass$Speed.Stat, df_UnGrass$Speed.Stat)

class(df$Primary.Type)

table(df$Primary.Type)
plot(df_Grass$Special.Attack.Stat, df_Grass$Speed.Stat, pch ='*')
length(df$Primary.Type)
length(df[df$Primary.Type == max(df$Primary.Type),])
a = length(df[df$Primary.Type == max(df$Primary.Type),]) / length(df$Primary.Type)
a

max(df$Primary.Type)
min(df$Primary.Type)

sum(df$Primary.Type == max(df$Primary.Type)) /length(df$Primary.Type)

sum(df$Primary.Type == min(df$Primary.Type)) /length(df$Primary.Type)

  