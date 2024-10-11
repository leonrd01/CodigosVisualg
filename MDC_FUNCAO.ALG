Algoritmo "MDC_Funcao"
Var
   a, b, c, mdc: Inteiro
funcao CalculaMDC(num1, num2, num3: Inteiro): Inteiro
Var
   maior, menor, resto: Inteiro

Inicio
   maior <- num1
   menor <- num2
   resto <- maior % menor

   enquanto resto <> 0 faca
      maior <- menor
      menor <- resto
      resto <- maior % menor
   fimenquanto

   maior <- num3
   menor <- menor
   resto <- maior % menor

   enquanto resto <> 0 faca
      maior <- menor
      menor <- resto
      resto <- maior % menor
   fimenquanto
   retorne menor
   
Fimfuncao

Inicio
   escreva("Digite o primeiro número: ")
      leia(a)

   escreva("Digite o segundo número: ")
      leia(b)

   escreva("Digite o terceiro número: ")
      leia(c)



   escreval(CalculaMDC(a,b,c))

Fimalgoritmo

