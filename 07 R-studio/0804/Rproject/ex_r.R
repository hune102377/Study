# 문제 2.1
plot(iris$Species,
     col = 'tomato',
     main = '품종의 막대그래프',
     xlab = '품종',
     ylab = '개수')

# 문제 2.2_1
var(iris$Petal.Width)
mean(iris$Petal.Width)
sd(iris$Petal.Width)

# 문제 2.2_2
hist(iris$Petal.Width,
     col = 'green',
     main = 'Petal Width',
     xlab = 'Width',
     ylab = 'Number')

hist(mtcars$hp,
     xlim = c(0, 400),
     ylim = c(0, 12),
     col = 'white'
)

plot(mtcars$hp, mtcars$mpg,
     col = 'red',
     pch = '%',
     cex = 2
)

str(mtcars$hp)

summary(mtcars$hp)

plot(iris$Sepal.Length, iris$Petal.Length, col='tomato', pch = 13)

a = c(1,2,3,4,5,6,7)
b = c(8,30,44,56,48,32,14)

lst_01 = list(Day = a, Tired = b)
lst_01
plot(lst_01$Day,lst_01$Tired,
     xlim = c(1,7),
     ylim = c(0,60),
     main = "Tired of Week",
     xlab = 'Day',
     ylab = 'Tired',
     type = 'l',
     col = 'blue'
)


# Smile

a = c(1:12)
b = c(NA,26,39,26,NA,15,3,15,NA,26,39,26)

plot(a,b,
     xlim = c(1,14),
     ylim = c(0,40),
     main = "I'M HAPPY~",
     xlab = 'HAPPY',
     ylab = 'HAPPY',
     type = 'l',
     col = 'blue'
)

print(15%%4)

n = 15

if (n %% 5 == 0 & n %% 3 == 0){
  print("피자나라치킨공주")
} else if (n %% 3 == 0){
  print("치킨")
} else if (n %% 5 == 0){
  print("피자")
} else {
  print("다이어트")
}

v <- c(10, 20, 30, 40, 50, 60, 70)
v

v[-7]

v

v[1:3] <- c(10,20,30)
v
v[1:3] <- seq(100, 300, 100)
v

v[c(T,F)]

v >= 100

n = 1:100
v = sum(seq(0, 100, 7))
v

f <- factor(c("Male", "Female", "Male", "Female"))
f
levels(f)

f[f == "Female"]
f[6] <- "Male"
f
levels(f)

v.1 <- c(1,2,3)
v.2 <- c("F", "F", "M")

lst <- list(id = v.1, gender = v.2)
lst
lst$gender[1]

n <- 32

which(n %% c(1:n) == 0)
length(which(n %% c(1:n) == 0))

iris[c(1:4,14,16:18),]

nrow(iris[iris$Sepal.Length<5,-5])


iris$Petal.Length > mean(iris$Petal.Length)

iris

iris$
  

mean(iris[iris$Petal.Length > mean(iris$Petal.Length), "Petal.Width"])

my.fun <- function(x, y, z=3){
  return (x + y * 2 + z * 3)
}
my.fun

my.fun(1,2,3)
my.fun(1,2)

my.fun(100,200,300)
my.fun(100,200)

divisor <- function(n) length((which(n %% c(1:n) == 0)))
length(which(100 %% c(1:100) == 0))
divisor(100)

t(1:15)
sapply(1:15,divisor)

f2 <- function (n) print(f'{n} + %')

f1 <- function (n) n/100

sapply(1:9, f1)
 