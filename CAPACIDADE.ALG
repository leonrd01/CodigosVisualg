Algoritmo "CAPACIDADE"
 PROCEDIMENTO CAPACIDADE()
Var
   Porcentagem:REAL
   total,diario,anual:real
Inicio
   escreval ("INFORME CAPACIDADE DE PRODU��O EM PORCETGEM ")
   leia (porcentagem)
   total <- (porcentagem*33000)/100
   anual <- total * 12
   diario <- total/22
   ESCREVAL (" CAPACIDADE DE PRODU��O ANUAL ", ANUAL ," MIL UNIDADES")
   ESCREVAL (" CAPACIDADE DE PRODU��O MENSAL", TOTAL,"  MIL UNIDADES")
   ESCREVAL ("CAPACIDADE DE PRODU��O DI�RIA ", DIARIO," UNIDADES")
   FIMPROCEDIMENTO

Fimalgoritmo