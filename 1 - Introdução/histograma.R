# dados para o histograma.
dados <- c (96 ,102 ,102 ,102 ,104 ,104 ,108 ,126 ,126 ,128 ,128 ,140,
            156 ,160 ,160, 121 ,118 ,145 ,149,112,152 ,144 ,121 ,
            133 ,134 ,109 ,108 ,107, 96)

# ordena os dados do histograma.
dados = sort(dados)
dados

# numero de Classes = raiz quadrada da quantidade de observações.
k <- round(sqrt(length(dados))) #round : arredondamento.


# intervalo de Classe.
amplitude = abs(min(dados) - max(dados)) # função abs = número sempre positivo.
ic = ceiling(amplitude/k)                # função ceiling = arredonadameno para cima.




# histograma
hist(dados,
     nclass = k,              # numero de classes.
     #breaks = c(96,108,120,132,144,156,180),
     labels = T,              # frequência em cima de cada coluna.
     right = F,               # inverte o intervalo da classe.
     ylim = c(0,10),          # limite para y.
     #xlim = c(90,170),        # limite para x.
     #freq =  FALSE,           # frequência relativa.
     col = "black",           # cor do histograma.
     border = "white",        # cor da borda.
     xlab ="Int. de Classes", # rotulos do eixo x (intervalos de classes).
     ylab ="Frequência",      # rotulos do eixo y (frequência).
     main = "Histogama")      # titulo do grafico.
