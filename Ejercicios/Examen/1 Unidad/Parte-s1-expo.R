library(dplyr)
library(readxl)
library(tidyr)
library(readr)
library(stringr)
library(ggplot2)
library(beeswarm)


### cargar datos

Affairs <- read_delim("D:/AnalisiMulti/ejercicios/Affairs.csv",",", escape_double = FALSE, trim_ws = TRUE)
# encabezado con las 5 primeras columnas
head(Affairs,5)
# para saber lcuantas filas y columnas hay
dim(Affairs)
# para saber el tipo de variables
str(Affairs)
#datos descriptivos de las variables
summary(Affairs)

names(Affairs)
## Cambiamos los nombres de la cabesera de la tabla
affairs_nombres <- c('nombres', 'asuntos', 'genero', 'edad', 'años de casado', 'niños', 'religion', 'educacion', 'ocupacion', 'calificacion')

cam_nombres <- function(dataframe) {
  for (i in 1:length(affairs_nombres)) {
    names(dataframe)[i] <- affairs_nombres[i]
  }
  return(dataframe)
}

Affairs <- cam_nombres(Affairs)
## mostrar con pocos datos la tabla
head(Affairs, 10)
## mostrar nombres
names(Affairs)
