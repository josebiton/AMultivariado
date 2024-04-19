install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
library(corrplot)
library(ggplot2)
#CUANTAS FILAS Y COLUMNAS TIENEN
dim(mtcars)

#TIPO DE DATOS , double, string
str(mtcars)

#//Nombres tienen las variables
names(mtcars)

#//Datos descriptivos de las variables
summary(mtcars)

# Ejecutar matriz de correlaciones
J = cor(mtcars)
corrplot(J, method = "ellipse")
corrplot(J, method = "circle")
corrplot(J, method = "square")
corrplot(J, method = "number")
corrplot(J, method = "shade")
corrplot(J, method = "color")
corrplot(J, method = "pie")






