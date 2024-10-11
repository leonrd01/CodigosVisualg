algoritmo "joguinho da vlha"

//declarção de registro
tipo
   jogos = registro
      nome: caractere
      pontos: inteiro
   fimregistro


   //procedimento para tabela das velhas
var
   resposta: caractere
   c,l,linha,coluna,ganhou,jogadas, jogador: inteiro
   jogo: vetor[1..3,1..3] de caractere
   jogadorr: vetor[1..2] de jogos
procedimento tabela()
inicio
   escreval(jogadorr[1].nome," |",jogadorr[1].pontos)
   escreval(jogadorr[2].nome," |",jogadorr[2].pontos)
   escreval("")
   escreval("  1    2    3")
   escreval("")
   para l <- 1 ate 3 faca
      para c <- 1 ate 3 faca
         escreva("  ",jogo[l,c],"")
         se c < 3 entao
            escreva("  |")
         fimse
         se c = 3 entao
            escreva("   ",l)
         fimse
      fimpara
      se l < 3 entao
         escreval("")
         escreval("----------------")
      fimse
   fimpara
fimprocedimento


//procedimento para jogabilidade
procedimento partida ()
inicio

   para l <- 1 ate 3 faca
      para c <- 1 ate 3 faca
         jogo[l,c] <- " "
      fimpara
   fimpara
   jogadas <- 0
   jogador <- 1
   repita
      limpatela
      tabela()

      escreval("")
      escreval("")


      //onde jogar
      repita
      repita
         se jogador = 1 entao
            escreval(jogadorr[1].nome,"[linha e coluna que deseja jogar]")
            leia(linha,coluna)
         senao
            escreval(jogadorr[2].nome,"[linha e coluna que deseja jogar]")
            leia(linha,coluna)
         fimse
      ate (linha <= 3) e (coluna <= 3)
   ate jogo[linha,coluna] = " "
   se jogador = 1 entao
      jogo[linha,coluna] <- "O"
      jogador <- 2
   senao
      jogo[linha,coluna] <- "X"
      jogador <- 1
   fimse
   jogadas <- jogadas + 1

   //ganhador por linha
   ganhou <- 0
   para l <- 1 ate 3 faca
      se (jogo[l,1] = "O") e (jogo[l,2] = "O") e (jogo[l,3] = "O") entao
         ganhou <- 1
         jogadorr[1].pontos <- jogadorr[1].pontos + 1
      fimse
   fimpara

   para l <- 1 ate 3 faca
      se (jogo[l,1] = "X") e (jogo[l,2] = "X") e (jogo[l,3] = "X") entao
         ganhou <- 2
         jogadorr[2].pontos <- jogadorr[2].pontos + 1
      fimse
   fimpara

   //ganhador por coluna
   para c <- 1 ate 3 faca
      se (jogo[1,c] = "O") e (jogo[2,c] = "O") e (jogo[3,c] = "O") entao
         ganhou <- 1
         jogadorr[1].pontos <- jogadorr[1].pontos + 1
      fimse
   fimpara

   para c <- 1 ate 3 faca
      se (jogo[1,c] = "X") e (jogo[2,c] = "X") e (jogo[3,c] = "X") entao
         ganhou <- 2
         jogadorr[2].pontos <- jogadorr[2].pontos + 1
      fimse
   fimpara

   //ganhador por diagonais
   se (jogo[1,1] = "O") e (jogo[2,2] = "O") e (jogo[3,3] = "O")  entao
      ganhou <- 1
      jogadorr[1].pontos <- jogadorr[1].pontos + 1
   fimse

   se (jogo[1,1] = "X") e (jogo[2,2] = "X") e (jogo[3,3] = "X")  entao
      ganhou <- 2
      jogadorr[2].pontos <- jogadorr[2].pontos + 1
   fimse
   se (jogo[1,3] = "O") e (jogo[2,2] = "O") e (jogo[3,1] = "O")  entao
      ganhou <- 1
      jogadorr[1].pontos <- jogadorr[1].pontos + 1
   fimse

   se (jogo[1,3] = "X") e (jogo[2,2] = "X") e (jogo[3,1] = "X")  entao
      ganhou <- 2
      jogadorr[2].pontos <- jogadorr[2].pontos + 1
   fimse
ate(jogadas = 9) ou (ganhou <> 0)
fimprocedimento


inicio
   escreval("--------------JOGO-DA-VELHA--------------------")
   escreval("Informe o nome dos jogaodores")
   escreva("JOGADOR 1: ")
   leia(jogadorr[1].nome)
   escreva("JOGADOR 2: ")
   leia(jogadorr[2].nome)
 //verificacação
   resposta <- "S"
       enquanto (resposta) = "S" faca
   partida ()

   limpatela
   tabela()
   escreval("")
   se ganhou = 1 entao
      escreval("VOCÊ GANHOU!!!")
      escreval("parabens", jogadorr[1].nome)

   senao
      se ganhou = 2 entao
         escreval("VOCÊ GANHOU!!!")
         escreval("parabens", jogadorr[2].nome)

      senao
         escreval("velha ;(")
      fimse
   fimse
   escreval("")
   fimenquanto
fimalgoritmo