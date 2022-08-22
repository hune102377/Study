# Q.2.1
plot(iris$Species,
     col = 'tomato',
     main = 'Count of Species',
     xlab = 'Species',
     ylab = 'Count'
     )

# Q.2.2
#(1)
mean(iris$Petal.Width)
var(iris$Petal.Width)
sd(iris$Petal.Width)

#(2)
hist(iris$Petal.Width,
     col = 'cyan',
     main = 'Count of Petal Width',
     xlab = 'Petal Width',
     ylab = 'Count'
     )

# Q.2.3
#(1)
hist(mtcars$hp,
     xlim = c(0, 400),
     ylim = c(0,12)
     )
#(2)
plot(mtcars$hp,
     mtcars$mpg,
     col = 'tomato',
     pch = 'x'
     )

# Q.2.4
#(1)
str(cars)

#(2)
summary(cars)

#(3)
plot(cars$speed,
     cars$dist,
     col = 'deeppink',
     pch = '*',
     xlim = c(0, 30),
     ylim = c(0, 150)
)
