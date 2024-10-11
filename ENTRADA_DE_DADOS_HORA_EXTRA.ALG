Algoritmo "entrada_de_dados_hora_extra"
registro funcionarios()
inicio
tipo
   cadf=registro
      Nome:caractere
      CPF:inteiro
      RG:inteiro
      Endereco:caractere
      Telefone:inteiro
      qtfilhos:inteiro
   fimregistro
Var
   vetf:vetor[1..2] de cadf
   i:inteiro

inicio


   para i de 1 ate 2 faca
      escreval("======cadastro de funcionarios========")
      escreval("")
      escreval("informe o seu nome:  ")
      leia(vetf[i].nome)
      escreval("informe o seu cpf:   ")
      leia(vetf[i].cpf)
      escreval("informe o seu rg:   ")
      leia(vetf[i].rg)
      escreval("informe o seu endereço:  ")
      leia(vetf[i].endereco)
      escreval("informe o seu telefone:  ")
      leia(vetf[i].telefone)
      escreval("informe quantos filhos você tem: ")
      leia(vetf[i].qtfilhos)
   fimpara

   limpatela
   para i de 1 ate 2 faca
      escreval("NOME: ",vetf[i].nome)
      escreval("RG :",vetf[i].rg)
      escreval("CPF: ",vetf[i].cpf)
      escreval("ENDEREÇO: ",vetf[i].endereco)
      escreval("TELEFONE: ",vetf[i].telefone)
      escreval("QUNTIDADE DE FILHOS: ",vetf[i].qtfilhos)
      escreval("=========================================")
      //==============================================================
   fimpara
fimprocedimento

procedimento extras1()
var
dia,semana,mes,resp1:inteiro
   operario,z,w:real
   
inicio

   dia<-15*8
   semana<-dia*5
   mes<-semana*4
   operario<-mes

   escreval("informe quntas horas extra você trabalhou no mês: ")
   leia(resp1)
   z<-operario/160 //160 é a carga horararia mensal do operario
   //w<-z+(50*15/100)
   w<-z*resp1
   escreval(" o valor das suas horas extra é de: R$",w,",00")
fimprocedimento
//=============================================================
 procedimento extra2()
 var
  dia,semana,mes,resp1:inteiro
   superviso,z,w:real
 inicio
  dia<-40*8
   semana<-dia*5
   mes<-semana*4
   superviso<-mes

   escreval("informe quntas horas extra você trabalhou no mês: ")
   leia(resp1)
   z<-superviso/160 //160 é a carga horararia mensal do operario
   //w<-z+(50*15/100)
   w<-z*resp1
   escreval(" o valor das suas horas extra é de: R$",w,",00")
fimprocedimento
 
 
 
Fimalgoritmo