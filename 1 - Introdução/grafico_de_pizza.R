tabela <- c (48.89,51.11)  # vetor de dados.

# atribuindo nomes aos elementos do vetor.
names(tabela) <- c("Ativa"," Sedentária")

# label pizza (%).
porc <- tabela*100/sum(tabela)
rotulos <- paste(names(tabela),"(",porc,"%)",sep ="")


# gráfico de pizza / setores
pie (tabela,                       # dados.
     col = c("red","green"),       # cores.
     border = "black",             # cor borda.
     main = "gráfico de pizza",    # titulo.
     labels = rotulos)             # porcentagem.