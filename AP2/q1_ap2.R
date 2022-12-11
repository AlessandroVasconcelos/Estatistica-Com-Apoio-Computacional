# x = 3 (número médio de acidentes por mês)
# lambda = 4 quatro acidentes)
# função dpois nos retorna a probabilidade associada a um valor.(prob. de 4 acidentes)
dpois(x= 4,lambda =3)


# x = 0 a 15 (ocorram de 0 a 15 acidentes).
poisson = dpois(0:15, lambda =3)

plot(poisson,
     xlab = " N.º acidentes",
     ylab = "probabilidade",
     type = "h",
     col = "")


