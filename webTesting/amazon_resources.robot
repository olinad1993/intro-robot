*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      https://www.amazon.com.br/
${LOGO}     //a[@href='/ref=nav_logo'][contains(.,'.com.br')]
${MENU_ELETRONICOS}     //a[contains(@href,'electronics')]
${HEADER_ELETRONICOS}   //h1[contains(.,'Eletrônicos e Tecnologia')]

*** Keywords ***

Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window  


Fechar navegador    
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