# vetor de dados
x <- c(96, 96, 102, 102,102, 104, 104, 108, 126, 126,128, 128, 140, 156, 160, 160, 164,170)

# media
mean(x)

# mediana
median(x)

# moda
table(x)
subset(table(x),table(x)== max(table(x))) #elemento que mais se repete.

# intervalor dados
range(x)

# Variância
var(x)

# Desvio Padrão
sd(x)

#Coeficiente de Variação
CV = 100*sd(x)/ mean (x)
CV

# resumo estatistico
summary (x)

# Quartiss mostra todos
quantile (x)

#Primeiro quartil
quantile (x,0.25)

#segundo quartil ou mediana median(x)
quantile (x,0.5)

#terceiro quartil 
quantile (x,0.75)

#quarto quartil
quantile (x,1.00)

#distância interquartil dos dados Q3-Q1
diq = (quantile(x,0.75)) - (quantile (x,0.25))
diq


