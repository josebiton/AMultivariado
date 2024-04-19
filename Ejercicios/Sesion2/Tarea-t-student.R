
weight=births$weight
births$var1 <- ifelse(births$smoke == "smoker", 1, 0)

J=births$var1

mostrar=t.test(c,weight)
print(mostrar)

#Si hay diferencia significativa entre el peso de los bebés de padres fumandores y no fumadores


weight=births$weight
births$sexo <- ifelse(births$sex_baby == "male", 1, 0)

B=births$sexo

mostrar=t.test(d,weight)
print(mostrar)

#Si hay diferencia significativa entre el peso de los bebés de sexo femenino y masculino