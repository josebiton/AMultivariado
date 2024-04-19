#Independientes

EA= c(2, 3, 1, 4, 2, 3, 2, 1, 3, 2)
EB= c(3, 2, 1, 3, 2, 2, 4, 2, 3, 1)

boxplot(EA,EB, names=c("EA", "EB"))
medias = c(mean(EA),mean(EB))
points(medias,pch=18,col="orange")


par(mar = c(2, 2, 2, 2))
par(mfrow = c(1, 2))
qqnorm(EA, xlab = "", ylab = "", main = "EA")
qqline(EA)
qqnorm(EB, xlab = "", ylab = "", main = "EB")
qqline(EB)

#PRUEBA T
t.test(EA,EB, paired = FALSE)
