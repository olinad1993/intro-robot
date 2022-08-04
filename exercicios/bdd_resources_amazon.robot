*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.amazon.com.br/
${LOGO}     //a[@href='/ref=nav_logo'][contains(.,'.com.br')]
${FRASE}    //title[contains(.,'Amazon.com.br | Tudo pra você, de A a Z.')]
${MENU_ELETRONICOS}     //a[contains(@href,'electronics')]
${HEADER_ELETRONICOS}   //h1[contains(.,'Eletrônicos e Tecnologia')]
${BOTAO_PESQUISA}       nav-search-submit-button
${BTN_ADD_CARRINHO}         add-to-cart-button
${ADICIONADO_NO_CARRINHO}  //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]
${CARRINHO}                nav-cart
${EXCLUIR}                 //input[contains(@value,'Excluir')]
${REMOVIDO_DO_CARRINHO}   //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]


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


Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}


Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text  locator=twotabsearchtextbox  text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element      locator=${BOTAO_PESQUISA}


Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[2]

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=(//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')])[1]
    Click Element      locator=${BTN_ADD_CARRINHO}

Verificar se o produto "${PRODUTO}" foi adicionado com sucesso
    Click Link      locator=${CARRINHO}
    Wait Until Element Is Visible        locator=//span[@class='a-truncate-cut'][contains(.,'${PRODUTO}')]

#CASO 04 #
Remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=${EXCLUIR}

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=${REMOVIDO_DO_CARRINHO}


# Gerkhin BDD
# Caso de Teste 03 - Adicionar Produto no Carrinho
Dado que estou na home page da Amazon.com.br
  Acessar a home page do site Amazon.com.br
  Verificar se aparece a frase "Amazon.com.br | Tudo pra você, de A a Z"

Quando adicionar o produto "Console Xbox Series S" no carrinho
    Digitar o nome de produto "Console Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
  Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso


# Caso de Teste 04 - Remover Produto do Carrinho
E existe o produto "Console Xbox Series S" no carrinho
    Quando adicionar o produto "Console Xbox Series S" no carrinho
    Então o produto "Console Xbox Series S" deve ser mostrado no carrinho


Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio