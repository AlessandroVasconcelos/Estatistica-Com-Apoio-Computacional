x <- 1:20
y <- x^2
plot (x,y,        # grafico de pontos.
      pch =2)     # figuras p/indicadores graficos.


a <- 1:20
b <- a ^2
plot (a,b,
      type ="l",           # tipo: grafico continuo.
      main ="Titulo ",
      sub = "subtitulo",
      col = "blue",        # cor grafico(linha).
      xlab ="X",           # rotulos do eixo x.
      ylab ="Y",           # rotulos do eixo y.
      pch =2)              # figura.

lines (rev(a),b)           # linha reversa.
points (a , 400 - b)       # adicao de pontos.



