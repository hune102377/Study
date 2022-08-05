# Smile

a = c(1:12)
b = c(NA,26,39,26,NA,15,3,15,NA,26,39,26)

plot(a,b,
     xlim = c(1,14),
     ylim = c(0,40),
     type = 'l',
     col = 'blue',
     lwd = 15,
     xlab="웃어서 행복한 겁니다~",
     ylab="예~",
     cex.lab=3,
     col.lab="yellow"
  
)
title(
  main="행복해서 웃는게 아니라",
  cex.main=3,
  col.main="yellow",
)