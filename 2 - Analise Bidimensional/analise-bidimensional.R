dados = read.csv("empregados-mb.csv",
                 encoding="UTF-8", # codificar.
                 header = TRUE,    # cabeçalho.
                 sep = ";",        # separador das variáveis (colunas).
                 dec = ",")        # casas decimais (contém números separados com vírgula).

# retorna uma lista de nomes das colunas do data.frame.
names(dados)

# cria uma Tabela de Contingência.
tab.cont = table(dados[c("Procedência", "Grau.de.instrução")])
tab.cont

# soma os elementos da coluna Ensino fundamental.
sum(tab.cont[ ,"Ensino fundamental"])

# aplica a função de soma nas linhas da Tabela de Contingência.
apply(tab.cont, MARGIN = 1, sum)

# aplica a função de soma nas colunas da Tabela de Contingência.
apply(tab.cont, MARGIN = 2, sum)

#=======================================================================================================
# Tabela de Proporção (tabela de contingência exibida em porcentagens, soma todos os elementos eh 100%).
tab.prop <- prop.table(tab.cont)
round(tab.prop * 100) # arredondando para porcentagem. 


# Tabela de Proporções das linhas (soma todos os elementos eh das linhas 100%).
tab.prop.lin <- prop.table(tab.cont,margin = 1)
round(tab.prop.lin * 100) # arredondando para porcentagem. 


# Tabela de Proporções das colunas (soma todos os elementos eh das colunas 100%).
tab.prop.col <- prop.table(tab.cont,margin = 2)
round(tab.prop.col * 100) # arredondando para porcentagem. 

# cores personalizadas.
cores = c("#B3E2CD", "#FDCDAC", "#CBD5E8")

# retângulos com áreas são proporcionais às frequências.
plot(tab.cont,
     main = "Frequência",
     col = cores)

# gráficos de barra com a tabela de contingência.
barplot(tab.cont,
        legend = TRUE,
        col = cores)

barplot(tab.cont,
        legend = TRUE,
        beside = TRUE,
        col = cores)


# EX1.
#a)
dados = read.csv("empregados-mb.csv",
                 encoding="UTF-8", # codificar.
                 header = TRUE,    # cabeçalho.
                 sep = ";")       # separador das variáveis (colunas).

names(dados)
tab.cont = table(dados[c("Procedência", "Grau.de.instrução")])
tab.prop <- prop.table(tab.cont)
round(tab.prop * 100)

#b)
porcentagem.ensino.medio <- sum (tab.prop [,2])
round(porcentagem.ensino.medio * 100)


#c)
porcentagem.ensino.medio.interior <- tab.prop[2,2]
round(porcentagem.ensino.medio.interior * 100)

# d)
tab.prop.lin <- prop.table(tab.cont,margin =1)
round(tab.prop.lin * 100) # arredondando para porcentagem.
porcentagem.interior.ensino.medio <- tab.prop.lin[2,2]
round(porcentagem.interior.ensino.medio * 100)

# EX2.
dados = read.csv("rotatividade-mao-de-obra.csv", sep = ";")

med = median(dados$X)
dados$XC = NA
dados$XC[dados$X > med] = "alto"
dados$XC[dados$X <= med] = "baixo"
med = median(dados$Y)

dados$YC = NA
dados$YC[dados$Y > med] = "alto"
dados$YC[dados$Y <= med] = "baixo"

dados

#a)
table(dados[ , c("XC", "YC")])

#b)
t = table(dados[ , c("XC", "YC")])
propT = prop.table(t)

#c)
sum(propT[, 2])



# Grafico de dispersao.
aac = read.csv("agentes-anos-clientes.csv",
               encoding="UTF-8", # codificar.
               sep = ";",
               header = TRUE)

plot(aac[, "Anos.de.serviço"], aac[, "Número.de.clientes"],
     xlab = "Anos de Serviço", 
     ylab = "Número de Clientes", 
     pch = 19, 
     col = "#FF7F00")

# gasto com saúde por renda bruta familiar.
fgs = read.csv("familia-gasto-saude.csv", sep = ";",
                    header = TRUE ,
                    dec = ",") 
head (fgs)
plot (fgs[,"X"], fgs[,"Y"],
         xlab = "Renda bruta mensal",
         ylab = "Renda gasta em saúde (%)",
         pch = 17,
         col = "#00ccff")

# nota por tempo gasto no teste
tom = read.csv("teste-operacao-maquina.csv",
               sep = ";",
               header = TRUE)
head (tom)
plot (tom [ ,"X"] , tom [,"Y"] ,
          xlab = "Resultado no teste (0 -100)",
          ylab = "Tempo para operar a má quina (min)",
          pch = 15 ,
          col = "magenta")

# Coeficiente de correla ção entre X e Y 
r0 = cor(aac[, "Número.de.clientes"], aac[,"Anos.de.serviço"])
r1 = cor(fgs[,"X"], fgs[,"Y"])
r2 = cor(tom[,"X"], tom[,"Y"])

coef.coor = data.frame(R.xy = c(r0 , r1 , r2 ),
                       Descrição = c("Próximo de 1", "Próximo de -1", "Próximo de 0"))
coef.coor


# Tabela 5
emd = read.csv ("empregados-mb.csv",
                encoding="UTF-8", # codificar.
                sep = ";",
                header = TRUE,
                dec = ",")

fund = emd[emd[,"Grau.de.instrução"] == "Ensino fundamental", "Salário"]
med = emd[emd[,"Grau.de.instrução"] == "Ensino médio", "Salário"]
sup = emd[emd[,"Grau.de.instrução"] == "Superior", "Salário"]

tab = data.frame(N = c(length(fund), length(med), length(sup)),
                 Média = c(mean(fund), mean(med), mean (sup)),
                 DP = c(sd(fund), sd(med), sd(sup)),
                 Var = c(var(fund), var(med), var(sup)),
                 S1 = c(min(fund), min(med), min(sup)),
                 Q1 = c(quantile(fund, 0.25, names = FALSE),
                            quantile(med, 0.25, names = FALSE),
                            quantile(sup, 0.25, names = FALSE)),
                 Q2 = c(quantile(fund, 0.50, names = FALSE),
                            quantile(med, 0.50, names = FALSE),
                            quantile(sup, 0.50, names = FALSE)),
                 Q3 = c(quantile(fund, 0.75, names = FALSE),
                            quantile(med, 0.75, names = FALSE),
                            quantile(sup, 0.75, names = FALSE)),
                 Sn = c(max(fund), max(med), max(sup)))

row.names(tab) = c("Fundamental", "Médio", "Superior")
todos = c(fund, med, sup)
tab = rbind(tab, Todos = c(length(todos),
                               mean(todos),
                               sd(todos),
                               var(todos),
                               min(todos),
                               quantile(todos, 0.25, names = FALSE),
                               quantile(todos, 0.50, names = FALSE),
                               quantile(todos, 0.75, names = FALSE),
                               max(todos)))

tab

#  Box Plot 
b = boxplot ( fund , med , sup ,
              names = c("Fundamental", "Médio", "Superior"),
              col = c("#00aedb", "#f37735", "#d11141"),
              boxwex = 0.5,
              cex.axis = 2)
b


# EX3
dados = read.csv("pesquisa-opiniao.csv",
                 header = T,
                 sep = ",")

#a) 
tab.cont = table(dados)
tab.prop = prop.table(tab.cont, margin = 2)
round(tab.prop * 100)

# EX4.
# Criando uma tabela
tc = matrix(c(50, 150, 65, 185, 105, 195, 120, 180),
            nrow = 2,  # número de linhas.
            ncol = 4)  # número de colunas.

#  nomes das colunas.
colnames(tc) = c('São Paulo', 'Campinas', 'Rib. Preto', 'Santos')

#  nomes das linhas.
row.names(tc) = c('SIM', 'NÃO')
tc

# EX5.
dados = data.frame(X = c(10, 10, 10, 15, 15, 15, 15, 20, 20, 20),
                   Y = c(5, 10, 10, 5, 10, 10, 15, 10, 10, 15))

#a)
mean(dados$X)
sd(dados$X)

#b)
mean(dados$Y)
sd(dados$Y)

#c)
plot(dados$X, dados$Y,
     xlab = "Maculino",
     ylab = "Feminino",
     pch = 19,
     col = "#FF7F00")

#e)
c = dados$X + dados$Y
cd = 0.92 * dados$X + 0.94 * dados$Y
