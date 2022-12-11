dados <- read.csv(                               # ler dados de um arquivo csv.
                "rotatividade-mao-de-obra.csv",  # caminho e nome do arquivo.
                header = T,                      # primeira eh cabeçalho.
                sep = ";")                       # ponto e virgula como separador.

dados[5,2] = 20            # na linha 5, coluna 2 recebe = 20.

dados$XC = NA              # cria uma nova coluna vazia.
dados$XC[10] = 1           # na coluna XC na linha 10 recebe 1.

# se X > mediana  X que eh 2, entao XC recebe = "alto".
dados$XC[dados$X > median(dados$X)] = "alto"

# se X <= mediana X que eh 2, entao XC recebe = "baixo".
dados$XC[(dados$X) <= median(dados$X)] = "baixo"

#outra solucao utilizando repeticao com o for
for(i in 1:length(dados$X))
{
  if(dados$X[i]>median(dados$X)){
    print("alto")
  }
  else{
    print("baixo")
  }
}


dados$YC = NA
dados$YC[dados$Y > median(dados$Y)] = "alto"
dados$YC[(dados$Y) <= median(dados$Y)] = "baixo"
dados[dados$X > median(dados$X),"XC"]            # mostra todos os "alto" na XC


#tabela de frequencia
t = table(dados[,c("XC","YC")])
t

#tabela de propocao
pt = prop.table(t)
pt

sum(pt[,"baixo"])
sum(pt[,2])

pt = prop.table(t,margin=1)
pt

plot(dados[,c("X","Y")],pch=10)

#--------------------------------------------------------------------------------------

tabela = read.csv("campeonato-brasileiro-full.csv",
                  header = TRUE,sep = ",")

vencedor = tabela[tabela$vencedor == "Flamengo",]    # todos os jogos que o Flamengo foi vencedor.
mandante =vencedor[vencedor$mandante == "Flamengo",] # todos os jogos que o Flamengo foi vencedor e mandante.
gols = mandante$mandante_placar                      # todos os gols do Flamengo quando foi vencedor e mandante.
length(gols)

#--------------------------------------------------------------------------------------

tabela = read.csv("campeonato-brasileiro-full.csv",
                  header = TRUE,
                  sep = ",")

# todos os gols dos mandantes.
golm = tabela$mandante_placar
# todos os gols dos visitantes.
golv = tabela$visitante_placar
sprintf("Soma de todos os gols = %d",sum(golm) + sum(golv))

# todos os jogos que o Criciuma foi mandante.
mandante = tabela[tabela$mandante == "Criciuma",]
# todos os jogos que o Criciuma foi visitante.
visitante = tabela[tabela$visitante == "Criciuma",]
golm = mandante$mandante_placar
golv = visitante$visitante_placar
sprintf("Soma dos gols Criciuma mandante e visitante = %d",sum(golm) + sum(golv))  


# todos os jogos que o Criciuma nao foi mandante.
mandante = tabela[tabela$mandante != "Criciuma",]

# todos os jogos que o Criciuma nao foi visitante.
visitante = tabela[tabela$visitante != "Criciuma",]

golm = mandante$mandante_placar
golv = visitante$visitante_placar
sprintf("Soma dos gols quando o Criciuma nao foi mandante e visitante = %d",
        sum(golm) + sum(golv))


 
