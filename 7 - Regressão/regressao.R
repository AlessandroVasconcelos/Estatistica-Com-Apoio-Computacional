propaganda = c(30,41,42,37,20,8,17,35,25)
vendas  =    c(430,335,490,470,210,195,270,400,480)
  
  
pdf("vendas.pdf")
plot(propaganda,vendas, 
                  main = "Gráfico de Dispersão",
                  pch = 16)
  
  
dev.off()
   
  
  
  
temperatura = c(18,16,25,22,20,21,23,19,17)
dilatacao   = c(5,3,10,8,6,7,9,6,5)
  
plot(temperatura,dilatacao, 
       main = "Gráfico de Dispersão",
       col = "red",
       pch = 16)
  
boxplot(temperatura,dilatacao)
  
  
  
dados = data.frame(dilatacao,temperatura)
reg = lm(dilatacao~temperatura,data = dados)
reg
  
x11()
plot(temperatura,dilatacao, 
       main = "Gráfico de Dispersão",
       col = "red",
       pch = 16)
abline(reg)
  
  
predict(reg)
residuos = resid(reg)
  
  
  
  
  
  
on = c(37.5, -45,    0, 31.5, -1, 20.1,  212.5, 46.3, 11.1,  43,    67, 9.4)
pn = c(20.9, 5.4, 49.4, 31.1, 30,   28,  367.1,  6.9, 45.4, 27.8, 43.1, 13.4 )
  
  
  
x11()
plot(on,pn,pch = 16,col = "red")
  
dados = data.frame(on,pn)
reg = lm(pn~on, data = dados)
summary(reg)
abline(reg)
boxplot(dados)
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
