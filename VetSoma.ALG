Algoritmo "VetSoma"

var

   vet1, vet2, vet3: vetor[1..10] de inteiro
   i, j, ord: inteiro

inicio
       escreval("digite 10 n�meros :")
   para i de 1 at� 10 fa�a
      leia (vet1[i])
   fimpara
   
       escreval(" digite mais 10 n�meros: ")
   para i de 1 at� 10 fa�a
      leia (vet2[i])
   fimpara

   para i de  1 at� 10 fa�a
      vet3[i] <- (vet1[i] + vet2[i])
   fimpara

   para i de 1 at� 10 fa�a
      para j de i+1 at� 10 fa�a
         se vet3[i] < vet3[J] ent�o
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