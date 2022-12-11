n = 1013
dados = factor(c(rep("Sim",n*3),(rep("Não,n"))))

dados = dados[sample(1:length(dados),length(dados))]

p = sum(dados == "Não")/sum(dados == "Sim")
p
amostra = sample(dados,100)
p = sum(amostra == "Não")/sum(amostra == "Sim")
p




# Exemplo 3
# Intervalo de confiança a 95% 95-100=25

qnorm(0.025)

p = 0.33 # proporcao de criancas com carie  33%
n = 100 # numero de criancas



p0 = p - 1.96 * sqrt(p *(1-p)/n)
p1 = p + 1.96 * sqrt(p *(1-p)/n)
# intervalo de confianca
c(p0,p1)


# Exemplo 4
p = 0.33
n = 1000

p0 = p - 1.96 * sqrt(p *(1-p)/n)
p1 = p + 1.96 * sqrt(p *(1-p)/n)
int.conf = c(p0,p1)
int.conf

# amplitude do intervalo
amp = int.conf[2] - int.conf[1]
amp



qnorm(0.025)



x = c(254.29,165.00,189.02,277.46,235.56,198.32)
t.test(x,
       mu = 285,
       alternative = "two.sided",
       conf.level = 0.99)


