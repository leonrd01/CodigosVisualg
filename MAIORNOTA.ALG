algoritmo "MaiorNota"

tipo
    aluno = registro
        nome:caractere
        ano:inteiro
        nota:real
    fimregistro
var
   alunos: vetor[1..3] de aluno
   cont: inteiro
   maior: real
   alnmaior: caractere
inicio

      para cont <- 1 ate 3 faca
          escreva("digite seu nome: ")
              leia(alunos[cont].nome)
          escreva("digite o ano: ")
              leia(alunos[cont].ano)
          escreva("digite sua nota: ")
              leia(alunos[cont].nota)
          se alunos[cont].nota > maior entao
            maior <- alunos[cont].nota
            alnmaior <- alunos[cont].nome
          fimse
          limpatela
      fimpara
      escreval(" ")
      escreval("O aluno com a maior nota foi ",alnmaior)




fimalgoritmo