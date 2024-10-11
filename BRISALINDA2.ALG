Algoritmo "BRISALINDA"

//DECLARAÇÃO DO REGISTRO
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
      horas: inteiro
   fimregistro

   //DECLARAÇÃO DE VARIÁVEIS
var
   salario,horaoperario,horasupervisor,horagerente,horadiretor, horas,salariol, des, des15, des22: real
   usuario: vetor[1..4] de cadastro
   saliq,saliq2,saliq3,saliq4, saliqui: real
   op,opn,i: inteiro
   cargo,nomeF: caractere

inicio

   //MENU PRINCIPAL
   repita
      escreval("----------MENU-----------")
      escreval("cadastrar funcionarios[1]")
      escreval("    calcular salario  [2]")
      escreval("          sair        [3]")
      escreval("-------------------------")
      leia(op)
      limpatela

      escolha op

         //CADASTRO DE FUNCIONARIO
      caso 1
         para i de 1 ate 4  faca
            limpatela
            escreval("*POR GENTILEZA, REALIZE 4 CADASTROS POR VEZ*")
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


         //SUB-MENU SALARIO
      caso 2
         repita
            escreval("-----------SALARIO-----------")
            escreval("       calcular salario   [1]")
            escreval("         relação IRPF     [2]")
            escreval("       salario liquido    [3]")
            escreval("          hora extra      [4]")
            escreval("         salario irpf     [5]")
            escreval("            sair          [6]")
            escreval("-----------------------------")
            leia(opn)
            limpatela
            escolha opn

               //CALCULO DE SALARIO
            caso 1
            
               //ENTRADA DE DADOS
               escreval("......................................")
               escreval("GARGOS CADASTRADOS: ")
               escreval("{operario/diretor/supervisor/gerente} ")
               escreval("......................................")
               escreval("  ")
               //CONTADOR PARA PUXADA DE INFORMAÇÕES
               para i de 1 ate 4 faca
                  escreval("---CALCULAR-SALARIO----")
                  escreval(usuario[i].nome)

                  escreva("CARGO: ")
                  leia(usuario[i].cargo)
                  escreval("HORAS TRABALHADAS POR SEMANA: ")
                  leia(usuario[i].horas)
                  
                 //PROCESSAMENTO
                  se usuario[i].cargo = "operario" entao
                     horaoperario <- (usuario[i].horas * 15) * 4
                     usuario[i].salario <- horaoperario
                  senao
                     se usuario[i].cargo = "supervisor" entao
                        horasupervisor <- (usuario[i].horas * 40) * 4
                        usuario[i].salario <- horasupervisor
                     senao
                        se usuario[i].cargo = "gerente" entao
                           horagerente <- (usuario[i].horas * 60) * 4
                           usuario[i].salario <- horagerente
                        senao
                           se usuario[i].cargo = "diretor" entao
                              horadiretor <- (usuario[i].horas * 80) * 4
                              usuario[i].salario <- horadiretor

                           fimse
                        fimse
                     fimse
                  fimse
                  
                  //SAÍDA DE DADOS
                  se usuario[i].cargo = "operario" entao
                     escreval("SALARIO P/ MÊS: ", horaoperario)
                  senao
                     se usuario[i].cargo = "supervisor" entao
                        escreval("SALARIO P/ MÊS: ", horasupervisor)
                     senao
                        se usuario[i].cargo = "gerente" entao
                           escreval("SALARIO P/ MÊS: ", horagerente)
                        senao
                           se usuario[i].cargo = "diretor" entao
                              escreval("SALARIO P/ MÊS: ", horadiretor)
                           senao
                              escreval("*OPS, CARGO NÃO IDENTIFCADO*")
                           fimse
                        fimse
                     fimse
                  fimse
               fimpara
               
               //RELAÇÃO IRPF
            caso 2
               para i de 1 ate 4 faca
                  escreval("NOME: ", usuario[i].nome)
                  escreval("SALARIO: ", usuario[i].salario)
                  
                  se (usuario[i].salario * 4 <1903.99)entao
                     escreval("ISENTO")
                  senao
                     escreval("PAGA IRRF")
                     escreval(" ")
                  fimse
               fimpara
               escreval("*PARA CALCULAR O IRRF, OP 4")

               //SALARIO LIQUIDO
            caso 3
               escreval("---SALARIO-LIQUIDO---")
               escreval("[informe...]")
               escreval("SALARIO BRUTO: ")
               leia(salariol)
               
               //PROCESSAMENTO E SAÍDA DE DADOS
               se (salariol >= 1000) e (salariol <= 2500) entao
                  saliq <- (salariol * 8/100)
                  saliqui <- salariol - saliq
                  escreval("SALARIO LIQUIDO: ", saliqui)
               senao
                  se (salariol > 2500)e (salariol <= 4000) entao
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
               
               //HORAS EXTRAS
            caso 4
               escreval("-------HORA-EXTRA---------")
               escreval("")
               escreval("NOME DO FUNCIONÁRIO: ",usuario[i].nome)
               escreval("CARGO: ",usuario[i].cargo)
               escreval("")
               
               //PROCESSAMENTO E SAÍDA
               se (usuario[i].cargo = "operario") e (usuario[i].horas > 40) entao
                  escreval("HORAS EXTRAS: ", usuario[i].horas - 40)
                  escreval("VALOR A SER PAGO: R$", 15 * (usuario[i].horas - 40), ",00")
               senao
                  se (usuario[i].cargo = "supervisor") e (usuario[i].horas > 40) entao
                     escreval("HORAS EXTRAS: ", usuario[i].horas - 40)
                     escreval("VALOR DAS HORAS EXTRAS: R$",40 * (usuario[i].horas - 40),",00")
                  senao
                     se (usuario[i].cargo = "gerente")  ou (usuario[i].cargo = "diretor") entao
                        escreval("*ESTE CARGO NÃO TEM DIREITO A HORAS EXTRAS*")
                     fimse
                  fimse
               fimse

               //SALARIO IRPF
            caso 5
            
               //ENTRADA DE DADOS
               escreval("---IMPOSTO-IRPF---")
               escreval("SALARIO BRUTO: ")
               leia(salario)
               se (salario < 1903.99) entao
                  escreval(" Você está isento")
               senao
                  se (salario >= 1903.99) e (salario <= 2826.65) entao
                     des <- (salario * 7.5/100)
                     escreval("Desconto de 7,5 % tendo que pagar", des)
                  senao
                     se (salario >= 2826.66) e (salario <= 3751.05) entao
                        des15 <- (salario * 15 /100)
                        escreval("Desconto de 15% tendo que pagar", des15)
                     senao
                        se (salario >= 3751.06) entao
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