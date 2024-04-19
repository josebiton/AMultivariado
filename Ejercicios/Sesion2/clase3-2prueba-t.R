#Independientes

E1= c(7, 6, 5, 6, 7)
EB= c(8, 7, 8, 8, 9)

boxplot(E1,EB, names=c("E1", "EB"))
medias = c(mean(E1),mean(EB))
points(medias,pch=18,col="orange")


par(mar = c(2, 2, 2, 2))
par(mfrow = c(1, 2))
qqnorm(E1, xlab = "", ylab = "", main = "E1")
qqline(E1)
qqnorm(EB, xlab = "", ylab = "", main = "EB")
qqline(EB)

#PRUEBA T
t.test(E1,EB, paired = TRUE)