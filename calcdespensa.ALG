Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/11/2023
Var
dispesa_P_palete,valorp,quantp:real

// Seção de Declarações das variáveis 
funcao faturamentoP(QP,VP,dispensap:real):real

inicio
       retorne (QP * (VP + dispensap)) + ((QP * (VP + dispesa_P_palete))* 50/100)
fimfuncao

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
        leia(quantp)
        leia(valorp)
        leia(dispesa_P_palete)
        escreval(faturamentoP(quantp,valorp,dispesa_P_palete))
    

Fimalgoritmo