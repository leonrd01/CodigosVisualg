Algoritmo "VetSoma"

var

   vet1, vet2, vet3: vetor[1..10] de inteiro
   i, j, ord: inteiro

inicio
       escreval("digite 10 números :")
   para i de 1 até 10 faça
      leia (vet1[i])
   fimpara
   
       escreval(" digite mais 10 números: ")
   para i de 1 até 10 faça
      leia (vet2[i])
   fimpara

   para i de  1 até 10 faça
      vet3[i] <- (vet1[i] + vet2[i])
   fimpara

   para i de 1 até 10 faça
      para j de i+1 até 10 faça
         se vet3[i] < vet3[J] então
            ord <- vet3[i]
            vet3[i] <- vet3[j]
            vet3[j] <- ord
         fimse
      fimpara
   fimpara
   escreval("-------------------")
   para i de 1 ate 10 passo 1 faca
      escreval(vet3[i], " ")
   fimpara

fimalgoritmo