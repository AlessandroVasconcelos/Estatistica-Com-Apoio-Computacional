# Q1
x = -5:5
y = 5 * x^2 + x^3

plot(x, y,
     type = "n",
     xlab = "x",
     ylab = "y",
     main = "5x² + x³")

lines(x, y, lwd = "2", lty = 2, col = 4)

# Q2
dados = read.csv("campeonato-brasileiro-cartoes.csv")

# tabela de frequencia.
cartoes = table(dados$cartao)
cartoes

names(cartoes) = c("Amarelo","Vermelho")
barplot(cartoes,
        main = "Cartões",
        col = c("yellow", "red"))
cartoes

# Q3
dados = read.csv("campeonato-brasileiro-cartoes.csv")
vermelho = dados[dados$cartao == "Vermelho", ]
tabela = table(vermelho$clube)
tabela = sort(tabela) # ordenar a tabela.

tabela[1]              # clube com a menor quantidade cartões vermelhos (primeira posição).
tabela[length(tabela)] # clube com a maior quantidade cartões vermelhos (última posição).

# Q4
dados = read.csv("campeonato-brasileiro-full.csv")
criciuma = dados[dados$mandante == "Criciuma",]
criciuma


# média e desvio padrão quando o Criciuma foi mandante (mandante_placar).
media = mean(criciuma$mandante_placar)
desvio = sd(criciuma$mandante_placar)
print("----- Criciuma -----")
sprintf("Média = %f",media)
sprintf("Desvio Padrão = %f", desvio)

# média e desvio padrão dos oponentes, se o Criciuma foi mandante, logo visitante_placar é o placar dos oponentes.
media = mean(criciuma$visitante_placar)
desvio = sd(criciuma$visitante_placar)
print("----- Oponentes -----")
sprintf("Média = %f",media)
sprintf("Desvio Padrão = %f", desvio)


# Q5
dados = read.csv("campeonato-brasileiro-full.csv")
vencedor = dados[dados$vencedor == "Flamengo", ]
mandante = vencedor[vencedor$mandante == "Flamengo", ]
gols = mandante$mandante_placar

# quantidade classes.
k = round(sqrt(length(mandante)))

hist(gols,
     nclass = k,
     main = "Número de gols",
     xlab = "Gols",
     ylab = "Frequência",
     col = "green")
