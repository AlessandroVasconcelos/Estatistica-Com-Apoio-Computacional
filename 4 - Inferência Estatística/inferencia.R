# Amostrage Aleatória Simples.

# x = número de amostras.
# size = tamanho da amostra.
# replace = TRUE (COM reposição).
# replace = FALSE (SEM reposição).

x = c(1:6)
sample(x, size = 2, replace = TRUE)

# Exercício 1.
urna = c(2, 4, 6, 8, 10)  # amostra aleatória.
tam = 2                   # tamanho da amostra.
num = 1000                # numero de amostras.

amostras = matrix(0, num, tam) # cria matriz 1000 x2.

for (i in 1:num)
{
  amostras[i,] = sample(urna, size = tam, replace = TRUE)
}

# aplica função nas margens da matriz.
medias = apply(amostras,
               MARGIN = 1, # margem (linhas =1 ou colunas =2).
               FUN = mean) # função que deve ser aplicada.

# parâmetro gráfico : 1 linha e 2 colunas.
par(mfrow = c(1, 2))

# pontos de quebra das células do histograma.
b = c(1, 3, 5, 7, 9, 11)

hist(amostras[, 1],
     probability = TRUE,
     main = "Histograma das Amostras",
     ylim = c(0,0.12),
     xlab = "Amostras",
     ylab = "Densidade",
     col = 3,
     breaks = b)

hist(medias,
     probability = TRUE,
     main = "Histograma das Médias",
     ylim = c(0,0.20),
     xlab = "Médias",
     ylab = "Densidade",
     col = 4,
     breaks = b)

#=========================================================================================
# Distribuição Normal.

# p = probabilidade.
# md = média.
# dp = desvio padrão.
# n = amostra de elementos retirados dessa população.

# - dnorm(p,md,dp) = retorna a densidade probabilística para um dado valor da variável.
# - pnorm(p,md,dp) = retorna a probabilidade acumulada para um dado valor da variável.
# - qnorm(p,md,dp) = retorna o quantil para um dado valor de probabilidade acumulada.
# - rnorm(p,md,dp) = retorna valores (números aleatórios) gerados a partir da distribuição.

#=========================================================================================
# Distribuição Amostral da Média.

# Exercício 2.
md = 100
dp = 10

# a) p(90 < X < 110).
p90 = pnorm(90, md, dp)
p110 = pnorm(110, md, dp)
p = p110 - p90
p

# b) p(90 < Xamostra < 110), n = 16.
n = 16
p90 = pnorm(90, md, dp / sqrt(n))
p110 = pnorm(110, md, dp / sqrt(n))
p = p110 - p90
p

# c) Gráficos de X e Xamostras.
png("distribuicoes.png",
    width = 600,
    height = 400)

curve(dnorm(x, 100, 10 / sqrt(16)),
      from = 50,
      to = 150,
      xlab = "X",
      ylab = "Probabilidade",
      main = "Distribuições",
      col = "blue")

curve(dnorm(x, 100, 10),
      from = 50,
      to = 150,
      add = TRUE,
      col = "orange")

legend("topright",
       legend = c("Distribuição original", "Distribuição amostral"),
       col = c("orange", "blue"),
       lty = 1)
dev.off()

# d)
p = qnorm(0.025)
p

n = ceiling(p^2)
n

# Exercício 3.
# a)
q = qnorm(0.1)
q
m = abs(q * 10 - 500)
m

# b)
# prob. 1 de 1 pacote ter menos de 500g.
p1pac = pnorm(500, m, 10)
p1pac

# prob. de 1 amostra de 4 pacotes ter média menor que 500g.
p1pac = pnorm(500, m, 10 / sqrt(4))
p1pac

# Exercício 4.
# a)
p = pnorm(500 / 7, 70, 10 / sqrt(7), lower.tail = FALSE)
p

# b)
p = pnorm(500 / 7, 70, 10 / sqrt(6), lower.tail = FALSE)
p
