# vetor de dados
x <- c(96, 96, 102, 102,102, 104, 104, 108, 126, 126,128, 128, 140, 156, 160, 160, 164,170)

# tabela com nome da variável e a frequencia.
tabelaFrequencia = table(x)
percentuais = tabelaFrequencia/length(x)



# tabela de frequencia mais elaborada.
library(dplyr)
dados <- c(18,19,19,19,19,19,19,19,19,19,19,19,20,20,22,23,24,26,26,30,32)
tabela <- data.frame(t(table(dados)))[,-1]
tabela$dados <- as.numeric(levels(tabela$dados))
tabela <- tabela %>% 
  mutate(Fr = 100*Freq/sum(Freq),
         Fac = cumsum(Freq),
         Xi.Fi = dados*Freq)
tabela

