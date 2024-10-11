Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual
tipo
   cadastro = registro
      nome: caractere
      cpf: real
      RG: real
      Endereco: caractere
      Telefone: real
      filhos: inteiro
      salario: real
      cargo: caractere

   fimregistro
   // declaração de variáveis
var
   salario,horaoperario,horasurpevisor,horagerente,horadiretor, horas,salariol, des, des15, des22: real
   usuario: vetor[1..2] de cadastro
   saliq,saliq2,saliq3,saliq4, saliqui: real
   op,opn,i: inteiro
   cargo: caractere

inicio
   repita
      escreval("----------MENU-----------")
      escreval("cadastrar funcionarios[1]")
      escreval("    calcular salario  [2]")
      escreval("          sair        [3]")
      escreval("-------------------------")
      leia(op)
      limpatela

      escolha op

         //cadastro de funcionario
      caso 1
         para i de 1 ate 2  faca
            limpatela
            escreval("*POR GENTILEZA, REALIZE 5 CADASTROS POR VEZ*")
            ESCREVAL(" ")
            escreval("---CADASTRO-FUNCIONARIO---")

            escreva("NOME: ")
            leia(usuario[i].nome)
            escreva("CPF: ")
            leia(usuario[i].cpf)
            escreva("ENDEREÇO: ")
            leia(usuario[i]. endereco)
            escreva("TEL: ")
            leia(usuario[i].telefone)
            escreva("QNT FILHOS: ")
            leia(usuario[i].filhos)
         fimpara


         //menus salario
      caso 2
         repita
            escreval("-----------SALARIO-----------")
            escreval("       calcular salario   [1]")
            escreval("          hora extra      [2]")
            escreval("       salario liquido    [3]")
            escreval("         salario irpf     [4]")
            escreval("            sair          [5]")
            escreval("-----------------------------")
            leia(opn)
            limpatela
            escolha opn

               //calcular saalrio com base em horas trabalhadas
            caso 1
               // entrada de dados
               escreval("......................................")
               escreval("GARGOS CADASTRADOS: ")
               escreval("{operario/diretor/surpevisor/gerente} ")
               escreval("......................................")
               escreval("  ")
               para i de 1 ate 2 faca
                  escreval("---CALCULAR-SALARIO----")
                  escreval(usuario[i].nome)

                  escreva("CARGO: ")
                  leia(usuario[i].cargo)
                  escreval("HORAS TRABALHADAS POR SEMANA: ")
                  leia(horas)


                  //processamento
                  se usuario[i].cargo = "operario" entao
                     horaoperario <- horas * 15.00
                     (usuario[i].salario) <- horaoperario

                     se usuario[i].cargo = "surpevisor" entao
                        horasurpevisor <- horas * 40.00
                        (usuario[i].salario) <- horasurpevisor
                     senao
                        se usuario[i].cargo = "gerente" entao
                           horagerente <- horas * 60.00
                           (usuario[i].salario) <- horagerente
                        senao
                           se usuario[i].cargo = "diretor" entao
                              horadiretor  <- horas * 80.00
                              (usuario[i].salario) <- horadiretor

                           fimse
                        fimse
                     fimse
                  fimse
                  //saída de dados
                  se usuario[i].cargo = "operario" entao
                     escreval("SALARIO P/ MÊS: ", horaoperario * 4)

                  senao
                     se usuario[i].cargo = "surpervisor" entao
                        escreval("SALARIO P/ MÊS: ", horasurpevisor * 4)
                     senao
                        se usuario[i].cargo = "gerente" entao
                           escreval("SALARIO P/ MÊS: ", horagerente * 4)
                        senao
                           se usuario[i].cargo = "diretor" entao
                              escreval("SALARIO P/ MÊS: ", horadiretor * 4)
                           senao
                              escreval("*OPS, CARGO NÃO IDENTIFCADO*")
                           fimse
                        fimse
                     fimse
                  fimse
               fimpara


               // hora extra
            caso 2
               se usuario[i].cargo = "operario" entao
                  para i de 1 ate 2 passo 1 faca
                     escreval(usuario[i].nome)
                     escreval(usuario[i].cargo)
                     escreval(usuario[i].salario)
                     se (horaoperario < 1903.98) entao
                        escreval("ISENTO")

                     fimse
                  fimpara
                     para i de 1 ate 2 passo 1 faca
                  escreval(usuario[i].nome)
                  escreval(usuario[i].cargo)
                  escreval(usuario[i].salario)
                  se (horaoperario < 1903.98) entao
                     escreval("ISENTO")

                     se (usuario[i].salario > 1903.98) entao
                        escreval("PAGA IMPOSTO")
               fimse
                  fimse
               fimpara

               // salario liquido
            caso 3
               escreval("---SALARIO-LIQUIDO---")
               escreval("[informe...]")
               escreval("SALARIO BRUTO: ")
               leia(salariol)
               se (salariol >= 1000.00)e (salariol <= 2500.00) entao
                  saliq <- (salariol * 8/100)
                  saliqui <- salariol - saliq
                  escreval("SALARIO LIQUIDO: ", saliqui)
               senao
                  se (salariol >= 2500.1)e (salariol <= 4000.00) entao
                     saliq2 <- (salariol * 10/100)
                     saliqui <- salariol - saliq2
                     escreval("SALARIO LIQUIDO: ", saliqui)
                  senao

                     se (salariol >= 4000.01)e (salariol <= 5500.00) entao
                        saliq3 <- (salariol * 12/100)
                        saliqui <- salariol - saliq3
                        escreval("SALARIO LIQUIDO: ", saliqui)
                     senao
                        se (salariol >= 5500.01)entao
                           saliq4 <- (salariol * 15/100)
                           saliqui <- salariol - saliq4
                           escreval("SALARIO LIQUIDO: ", saliqui)
                        senao
                           se (salariol < 1000.00) entao
                              escreval("*OPA! VOCÊ NÃO TEM DESCONTO*")

                           fimse
                        fimse
                     fimse
                  fimse
               fimse

               escreval("---------------------")

               // salario irpf
            caso 4


               escreval("---IMPOSTO-IRPF---")
               escreval("SALARIO BRUTO: ")
               leia(salario)


               se (salario <= 1903.98) entao
                  escreval(" Você está isento")
               senao

                  se (salario >= 1903.99)e (salario <= 2826.65) entao
                     des <- (salario * 7.5/100)
                     escreval("Desconto de 7,5 % tendo que pagar", des)
                  senao

                     se (salario >= 2826.66) e (salario <= 3751.05) entao
                        des15 <- (salario * 15 /100)
                        escreval("Desconto de 15% tendo que pagar", des15)
                     senao
                        se (salario > 3751.06)entao
                           des22 <- (salario * 22 /100)
                           escreval("Desconto de 22% tendo que pagar", des22)
                        fimse
                     fimse
                  fimse
               fimse


            fimescolha
         ate opn = 6


      fimescolha
   ate op = 3
Fimalgoritmo




















