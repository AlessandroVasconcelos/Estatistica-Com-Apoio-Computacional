tabela <- c (48.89 , 51.11)  #vetor de dados

# atribuindo nomes aos elementos do vetor
names(tabela) <- c("Ativa"," Sedentária")

# gráfico de barras
barplot (tabela ,                           # dados.
         xlab = " Categorias ",             # rótulo do eixo x.
         ylab = "% - percentagem ",         # rótulo do eixo y.
         col = c("green","red"),            # cores.
         border = 'black',                  # cor da borda.
         main = "gráfico de barras",        # titulo.
         ylim = c(0 , 60))                  # limites do eixo y.
