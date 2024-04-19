install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
edad = c(26,18,20,19,25,22,37,56,78)
talla = c(1.56,1.72,1.65,1.44,1.69,1.66,1.51,1.62,1.42)

# Grafico de dispersión
pairs(edad~talla)

# Cambiar de color
pairs(edad~talla, col="pink" , pch=19)

# Grafico de cajas

df <- data.frame(edad, talla)
chart.Correlation(df)