*** Settings ***
Documentation    Exemplos utilizando Dicionario: Quantos dias tem cada mês

*** Variables ***
# 2 - Crie uma variável do tipo DICIONÁRIO na seção de variáveis globais que contenha nela os meses do ano e, 
# para cada mês, informe o número de dias desse mês;
&{DIAS_POR_MES}             janeiro=31    fevereiro=28  marco=31         abril=30       maio=31         junho=30                            
...                         julho=31      agosto=31     setembro=30      outubro=31     novembro=30     dezembro=31                         
*** Test Cases ***
# 3 - Crie um teste que imprima no Console (Log To Console) cada mês e a sua respectiva quantidade de dias.
Imprimir dias por mês de 2022

    Log To Console        JANEIRO há ${DIAS_POR_MES.janeiro}
    Log To Console        FEVEREIRO há ${DIAS_POR_MES.fevereiro}
    Log To Console        MARÇO há ${DIAS_POR_MES.marco}
    Log To Console        ABRIL há ${DIAS_POR_MES.abril}
    Log To Console        MAIO há ${DIAS_POR_MES.maio}
    Log To Console        JUNHO há ${DIAS_POR_MES.junho}
    Log To Console        JULHO há ${DIAS_POR_MES.julho}
    Log To Console        AGOSTO há ${DIAS_POR_MES.agosto}
    Log To Console        SETEMBRO há ${DIAS_POR_MES.setembro}
    Log To Console        OUTUBRO há ${DIAS_POR_MES.outubro}
    Log To Console        NOVEMBRO há ${DIAS_POR_MES.novembro}
    Log To Console        DEZEMBRO há ${DIAS_POR_MES.dezembro} 
# 4 - Rode os testes e confira se logou tudo certinho!



