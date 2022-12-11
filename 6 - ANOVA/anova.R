# Dados do experimento
res = c(25,31,22,33,26,25,26,29,20,28,28,31,
        23,27,25,34,21,24,29,28)

# Criando os nomes dos tratamentos na ordem correspondente
trat = factor (rep(paste0("tr",1:4),5))

# Fazendo a ANOVA
resultado = aov(res~trat)

 # Para exibir o quadro da ANOVA
anova(resultado)


#CONCATENAR
paste("A",1:5)
paste("A",1:5,sep=":")
paste0("A",1:5)           # sem espaços a concatenação.
paste("A",1:5,sep="")


# ORDENAR VALORES
x = sort(res)

# REPETIÇÃO
rep(x,2)




dados1 = c(12,15,14,12,15,18,12,14,12,11,
          12,11,13,18,15,14,13,12,11,10,
          10,12,14,12,11,13,10,12,13,11,
          13,15,14,15,17,14,13,14,15,16)




dados = c(12,12,10,13,
          15,11,12,15,
          14,13,14,14,
          12,18,12,15,
          15,15,11,17,
          18,14,13,14,
          12,13,10,13,
          12,13,10,13,
          14,12,12,14,
          12,11,13,15,
          11,10,11,16) 

#zona = factor (rep(paste0("zonas",1:4),10))

zona = factor(rep(1:4,10))
resultado = aov(dados~zona)
resultado





# Criando o vetor de dados, o de tratamentos
# e o de blocos,respectivamente
dad = c(2,5,2,5,
        3,7,4,3,
        2,6,5,4,
        4,5,1,3,
        2,5,4,4)

bloc = gl(5,4,label = paste("peso",LETTERS[1:5]))
trat = factor(rep(paste("dieta",1:4),5))

# Criar um data.frame contendo todos os dados
tabela = data.frame(blocos = bloc,
                    tratamentos = trat,
                    dados = dad)
tabela

# ANOVA
resultado = aov ( dados~tratamentos+blocos,tabela)#y~t+b
resultado

# Gera a tabela de análise de variância
anova(resultado)






# Teste de pressupostos da anovaProgenie
dados = read.csv ("base-progenie.csv",
                  header = T,
                  sep = ";")
dados
anovaProgenie = aov(volume~progenie,data = dados)


# Teste de normalidade dos resíduos da ANOVA
shapiro.test(resid(anovaProgenie))


# Teste de homogeneidade
bartlett.test(volume~progenie,data = dados)


# Teste de Tukey
resultado1 = TukeyHSD(anovaProgenie,"progenie")
resultado1
pdf ("grafico-tukey-01.pdf")
plot(resultado1)








