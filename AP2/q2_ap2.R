dados <- read.csv("contas_celular.csv",header = TRUE)
head(dados)

# amostra aleatória de 100 contas
a = sample(dados$Conta, 100)

#média amostral
mean(a)

# desvio padrão amostral
sd(a)

# Desvio padrão amostral
dpa = sd(a)/sqrt(length(a))
dpa

hist(a,
     col = "black",
     border = "white",
     xlab = "Amostra",
     ylab = "Frequência",
     main = "Histogama")      




