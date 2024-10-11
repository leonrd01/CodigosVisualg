Algoritmo "Registro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/10/2023
tipo

   cadastro = registro
      Nome: caracter
      endereco: caracter
      telefone: caracter

   fimregistro

Var
   // Seção de Declarações das variáveis
   pessoa: vetor[1..10] de cadastro
   i,j,meio,ini,fim: inteiro
   opcao: inteiro
   resposta,resp,resp1,resp2, pesquisa, n: caracter
   situacao,situacao1,situacao2: logico
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   situacao1<- verdadeiro
   Enquanto (situacao1 = verdadeiro) faca
      limpatela()
      ESCREVAL("----------LISTA DE CONTATOS----------")
      escreval(" ")
      escreval(" ")


      Escreval ("MENU DE OPÇÕES")

      ESCREVAL("1. Realizar 10 Registros")
      ESCREVAL("2. listar todos os Registros")
      ESCREVAL("3. Pesquisar Registros")
      ESCREVAL("4. Sair do Programa")
      Leia(opcao)
      limpatela()


      escolha (opcao)

      caso(1)
         para i de 1 ate 10 faca
            ESCREVAL("---------- CONTATO ----------")

            Escreval("INFORME O NOME:")
            Leia(pessoa[i].nome)
            Escreval("INFORME ENDEREÇO:")
            Leia(pessoa[i].endereco)
            Escreval("INFORME O TELEFONE:")
            Leia(pessoa[i].telefone)

            Escreval(" ")
            Escreval (" ")

         fimpara
         Escreval("Deseja voltar para o menu?(sim/nao)")
         leia(resposta)
         Se resposta ="sim" entao
            situacao1<- verdadeiro
         senao
            Escreval("PROGRAMA FINALIZADO")
            situacao1<- falso
         fimse
      caso(2)
         limpatela()
         para i de 1 ate 10 faca
            ESCREVAL("---------- CONTATO",i," ----------")

            Escreval("NOME:")
            escreval(pessoa[i].nome)
            Escreval("ENDEREÇO:")
            Escreval(pessoa[i].endereco)
            Escreval("TELEFONE:")
            Escreval(pessoa[i].telefone)

            Escreval(" ")
            Escreval (" ")

         fimpara

         Escreval("Deseja voltar para o menu?(sim/nao)")
         leia(resposta)
         Se resposta ="sim" entao
            situacao1<- verdadeiro
         senao
            Escreval("PROGRAMA FINALIZADO")
            situacao1<- falso
         fimse

      caso(3)
         situacao2<-verdadeiro
         limpatela()
         repita
            Escreval("Digite o nome do Contato a ser pesquisado")
            Leia(pesquisa)
            para i de 1 ate 10 faca
               Se (pesquisa = pessoa[i].nome) entao
                  ESCREVAL("---------- CONTATO",i," ----------")
                  Escreval("NOME:")
                  escreval(pessoa[i].nome)
                  Escreval("ENDEREÇO:")
                  Escreval(pessoa[i].endereco)
                  Escreval("TELEFONE:")
                  Escreval(pessoa[i].telefone)
                  Escreval(" ")
                  Escreval(" ")
               fimse
            fimpara


            Escreval("Fim de Pesquisa")
            Escreval("Deseja pesquisar novamente?(sim/nao)")
            leia(resposta)
            Se resposta ="sim" entao
               limpatela()
               situacao2<-verdadeiro
            SENAO
               situacao2<-falso
            fimse

         ate situacao2 = falso
         Escreval("Deseja voltar para o menu?(sim/nao)")
         leia(resp)
         se resp = "sim" entao
            situacao1<- verdadeiro
         senao
            situacao2<- falso
            situacao1<- falso
         fimse

      caso(4)
         Limpatela()
         Escreval("Programa Finalizado")
         situacao1<- falso

      fimescolha

   fimenquanto

Fimalgoritmo
