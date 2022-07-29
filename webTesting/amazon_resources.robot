*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      https://www.amazon.com.br/
${LOGO}     //a[@href='/ref=nav_logo'][contains(.,'.com.br')]
${MENU_ELETRONICOS}     //a[contains(@href,'electronics')]
${HEADER_ELETRONICOS}   //h1[contains(.,'Eletrônicos e Tecnologia')]
${TITULO_PAGINA}        Amazon.com.br | Tudo pra você, de A a Z.

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window  

Fechar navegador    
    Capture Page Screenshot
    Close Browser
    


Acessar a home page do site Amazon.com.br
    Go To   url=${URL}
    Wait Until Element Is Visible   locator=${LOGO}


    [Documentation]     Clicar no elemento Eletronicos
Entrar no menu "Eletrônicos"
    Click Element   locator=${MENU_ELETRONICOS} 


    [Documentation]     Wait, tempo de espera para a pagina carregar
Verificar se aparece a frase "Eletrônicos e Tecnologia"    
    Wait Until Element Is Visible  locator=${HEADER_ELETRONICOS}
    Wait Until Page Contains    text=Eletrônicos e Tecnologia


    [Documentation]     Usando variaveis no titulo
Verificar se o título da página fica "${TITULO}"
    Title Should Be  title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible   locator=(//a[contains(@aria-label,'${NOME_CATEGORIA}')])[2]


Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
        Input Text  locator=twotabsearchtextbox  text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element  locator=nav-search-submit-button

Verificar o resultado da pesquisa se esta listando o produto "${PRODUTO}"
    Wait Until Element is Visible   locator=(//span[contains(.,'${PRODUTO}')])[2]






# GHERKIN BDD #
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia" 

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"


# CASO DE TESTE 2 #

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"    

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"    