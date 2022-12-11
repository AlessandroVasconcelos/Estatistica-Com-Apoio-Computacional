dados = read.table("dados-01.txt", header = TRUE, sep = ";")

campBR = read.csv("campeonato-brasileiro-full.csv")

library(gdata)
bx = read.xls("iris.xls")