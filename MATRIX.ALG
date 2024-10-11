algoritmo "matriz"
var
   i,j:inteiro
   vet: vetor[1..5,1..5] de inteiro
inicio
      para i <- 1 ate 5 faca
          para j <- 1 ate 5 faca
              escreva("digite um valor para a linha ",i," e coluna ",j,": ")
                 leia(vet[i,j])
          fimpara
      fimpara
      
      escreval(" ")
      

      
      para i <- 1 ate 5 faca
          para j <- 1 ate 5 faca
              se vet[i,j] % 2 = 0 entao
                escreval("numero par (",vet[i,j],") encontrado na linha ",i,", coluna ",j)
              fimse

          fimpara
      fimpara
      
      escreval(" ")
      escreval(" ")

      para i <- 1 ate 5 faca
          para j <- 1 ate 5 faca
              se vet[i,j] % 2 = 1 entao
                escreval("numero ímpar (",vet[i,j],") encontrado na linha ",i,", coluna ",j)
              fimse

          fimpara
      fimpara





fimalgoritmo