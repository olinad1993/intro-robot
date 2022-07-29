*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.amazon.com.br/
${LOGO}     //a[@href='/ref=nav_logo'][contains(.,'.com.br')]
${MENU_ELETRONICOS}     //a[contains(@href,'electronics')]
${HEADER_ELETRONICOS}   //h1[contains(.,'Eletrônicos e Tecnologia')]
${BOTAO_PESQUISA}       nav-search-submit-button

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser


Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text  locator=twotabsearchtextbox  text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element      locator=${BOTAO_PESQUISA}
    
Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]    

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=(//span[contains(.,'${PRODUTO}')])[2]
    Click Element    locator=//input[contains(@name,'submit.add-to-cart')]

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Click Element    locator=//a[@class='a-button-text']
    Wait Until Element Is Visible        locator=//span[@class='a-truncate-cut'][contains(.,'${PRODUTO}')]
                       