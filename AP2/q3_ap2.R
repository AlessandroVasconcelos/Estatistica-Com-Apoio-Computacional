dados <- read.csv("tempo_transito.csv",header = TRUE)

# selecionando dos dados a idade entre 15 e 19 anos.
idade = dados[dados$Idade >= 15 & dados$Idade <= 19,"Tempo"]
#numero de motoristas
motoristas = 50

# amostra aleatória
a = sample(idade,motoristas)
a

#média amostral
media = mean(a)

# retorna a probabilidade acumulada para um dado valor da variável.
pnorm24 = pnorm(24.7, media, 1.5/sqrt(motoristas)) 
pnorm25 = pnorm(25.5, media, 1.5/sqrt(motoristas)) 

# diferença entre probabilidade acumulada de 24,7 e 25,5 minutos.
# P(X < 25.5) - P(X < 24.7)
p   = pnorm25 - pnorm24                       
p
