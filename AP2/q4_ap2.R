#gasto médio US$ 9126
#gasto médio menor que US$ 9400?

# número de faculdades.
n = 9
#desvio padrão
dp =  1500


# retorna a probabilidade acumulada para um dado valor da variável.
# P(X < 9400)
x = pnorm(9400, 9126, dp/sqrt(n))
x

