Algoritmo "vetormulti"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : washington luis
// Descrição   : multiplica o vetor a por 5 criando um vetor b e ordenando em forma decrescente
// Autor(a)    : brisa nzinga souza alves
// Data atual  : 18/09/2023
Var
 n: vetor[1..20] de inteiro
 m: vetor[1..20] de inteiro
 i, j, auxi: inteiro
 

Inicio

 para i de 1 ate 20 passo 1 faca
 escreval("informe um número")
  leia(n[i])
  m[i]<- n[i] * 5
  fimpara
  
para i de 1 ate 19 faca
 para j de i+1 ate 20 passo 1 faca
  se m[i]< m[j] entao
  
  auxi<- m[i]
  m[i] <- m[j]
  m[j] <- auxi
   fimse
    fimpara
  fimpara

 para i de 1 ate 20 passo 1 faca
 escreval( m[i])
  fimpara



Fimalgoritmo