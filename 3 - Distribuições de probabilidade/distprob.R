#===========================================================================================
# Distribuição Binomial.

# p = probabilidade de sucesso para cada teste.
# n = número de amostras (número de repetições do experimento).
# x = número de sucessos.

# - dbinom(x,n,p) = retorna a densidade probabilística para um dado valor da variável.
# - pbinom(x,n,p) = retorna a probabilidade acumulada para um dado valor da variável.
# - qbinom(x,n,p) = retorna o quantil para um dado valor de probabilidade acumulada.
# - rbinom(x,n,p) = retorna valores (números aleatórios) gerados a partir da distribuição.


# Exemplo 1:
p = 0.1 # probabilidade de sucesso para cada teste.
n = 18  # número de amostras (número de repetições do experimento).
x = 2   # número de sucessos.
#número de sucessos em 18 amostras.
dbinom (x, n, p)

# Exemplo 2: 
x = 0:6
n = 6
p = 0.5
bino = dbinom(x, n, p)
bino

plot(x, bino,
     type = "h",
     xlab = "Número de peças perfeitas",
     ylab = "Probabilidade",
     main = "Distribuição binomial")


#===========================================================================================
# Distribuição de Poisson.

# x = número de sucessos (probabilidade do número de ocorrências).
# lambda = número de médio de sucessos num intervalo contínuo (de tempo ou espaço).

# - dpois(x,lambda) = retorna a densidade probabilística para um dado valor da variável.
# - ppois(x,lambda) = retorna a probabilidade acumulada para um dado valor da variável.
# - qpois(x,lambda) = retorna o quantil para um dado valor de probabilidade acumulada.
# - rpois(x,lambda) = retorna valores (números aleatórios) gerados a partir da distribuição.

# Exemplo 3: 
# a)
x = 2
lambda = 2.3

# distribuição de Poisson com parâmetros x e lambda:
dpois(x, lambda)

# b)
x = 0:10
poisson = dpois(x, lambda)
plot(x,poisson,
     xlab = "Número de erros por milímetro", 
     ylab = "Probabilidade de Poisson",
     main = "Distribuição de Poisson")
lines (x , poisson )


#===========================================================================================
# Distribuição Normal.

# p = probabilidade.
# md = média.
# dp = desvio padrão.

# - dnorm(p,md,dp) = retorna a densidade probabilística para um dado valor da variável.
# - pnorm(p,md,dp) = retorna a probabilidade acumulada para um dado valor da variável.
# - qnorm(p,md,dp) = retorna o quantil para um dado valor de probabilidade acumulada.
# - rnorm(p,md,dp) = retorna valores (números aleatórios) gerados a partir da distribuição.

# Exemplo 4:
# a)
p = 179
md = 170
dp = 6

#pnorm(função de probabilidade).
pnorm(p,md,dp)

# b)
p = 0.8
#qnorm(função de distrib. probabilidade).
qnorm(p,md,dp)

# c)
inicio = 170 - 3 * 6  # from
fim =    170 + 3* 6   # to
curve(dnorm(x, 170, 6),
      inicio,
      fim,
      type = "l",
      xlab = "Alturas (cm)",
      ylab = "Probabilidade de se encontrar a altura x",
      main = "Distribuição Normal")

lines (c(179, 179),
       c(0, 0.022),
       col = "red ")

lines (c(175.0497, 175.0497),
       c(0, 0.0465),
       col = " blue")
