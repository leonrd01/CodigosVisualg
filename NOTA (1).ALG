algoritmo "Nota"
var
   aln: vetor[1..10] de caractere
   nt1,nt2,nt3: vetor[1..10] de inteiro
   med: vetor[1..10] de real
   cont,cont2:inteiro
   resp, pesquisa,ord: caractere
   situacao: inteiro
   logic:logico
   
inicio
       para cont <- 1 ate 10 faca
           limpatela
           escreva("digite o nome do ",cont,"° aluno: ")
              leia(aln[cont])
           escreva("1° NOTA: ")
              leia(nt1[cont])
           escreva("2° NOTA: ")
             leia(nt2[cont])
           escreva("3° NOTA: ")
             leia(nt3[cont])
       fimpara
       
       para cont <- 1 ate 10 faca
           med[cont] <- (nt1[cont] + nt2[cont] + nt3[cont]) / 3
       fimpara
       
          para cont de 1 até 9 faça
           para cont2 de cont+1 até 10 faça
             se aln[cont] > aln[cont2] entao
                ord <- aln[cont]
                aln[cont] <- aln[cont2]
                aln[cont2] <- ord
             fimse
           fimpara
          fimpara
          
            limpatela
            escreval("Médias: ")
            
       para cont <- 1 ate 10 faca
           escreval(med[cont]:2:2)
       fimpara

      escreva("deseja fazer uma pesquisa ? [sim/nao]")
         leia(resp)

      enquanto resp = "sim" faca

      limpatela

        escreva("qual o nome que deseja pesquisar ?")
           leia(pesquisa)
           situacao <- 1
        repita
                 situacao <- situacao + 1
        ate (situacao = 10) ou (pesquisa = aln[situacao])

      se pesquisa = aln[situacao] entao
        logic <- verdadeiro
      senao
        logic <- falso
      fimse
      escreval(" ")
      escreval(" ")

      se (logic = verdadeiro) entao
           escreval ("Aluno encontrado  ", pesquisa)

      senao
           escreval ("Aluno não encontrado")
      fimse

      escreval ("Deseja continuar ? [sim/nao])")
      leia (resp)
      fimenquanto
      escreva("OBRIGADO, VOLTE SEMPRE !!")

       
       
       
       
       
       
       
       
       
fimalgoritmo