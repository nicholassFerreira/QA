*** Settings ***
Resource    resources/base/Funcional.robot

Test Setup    Iniciar Navegador
Test Teardown    Finalizar Teste

*** Test Cases ***

Deve Cadastrar Usuario
    Click    text="Sign in"
    Type Text    xpath=//*[@id="email_create"]    nicholas_moura@estudante.sesisenai.org.br
    Click    xpath=//*[@id="SubmitCreate"]
    Click    xpath=//*[@id="uniform-id_gender1"]
    Type Text    xpath=//*[@id="customer_firstname"]    Nicholas
    Type Text    xpath=//*[@id="customer_lastname"]    Ferreira Moura
    Type Text    xpath=//*[@id="passwd"]    N1chol@s
    Select Options By    xpath=//*[@id="days"]    value    25
    Select Options By    xpath=//*[@id="months"]    value    10
    Select Options By   xpath=//*[@id="years"]    value    2005
    Click    xpath=//*[@id="submitAccount"]

Deve Comprar Produto
    Click    text="Sign in"
    Type Text    xpath=//*[@id="email"]    nicholas_moura@estudante.sesisenai.org.br
    Type Text    xpath=//*[@id="passwd"]    N1chol@s
    Click    xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    Click    xpath=//*//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span
    Click    xpath=//*[@title="Proceed to checkout"]
    Click    xpath=//*[@id="center_column"]/p[2]/a[1]/span
    Type Text    xpath=//*[@id="email"]    nicholas_moura@estudante.sesisenai.org.br
    Type Text    xpath=//*[@id="passwd"]    N1chol@s
    Click    xpath=//*[@id="SubmitLogin"]
    Click    xpath=//*[@name="processAddress"]
    Click    xpath=//*[@id="cgv"]
    Click    xpath=//*[@id="form"]/p/button/span
    Click    xpath=//*[@id="HOOK_PAYMENT"]/div[1]/div/p/a/span
    Click    xpath=//*[@id="cart_navigation"]/button/span


Deve Adicionar no Carrinho
    Click    xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    Click    xpath=//*//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span
    Click    xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span

Deve Deslogar Do Site
    Click    text="Sign in"
    Type Text    xpath=//*[@id="email"]    nicholas_moura@estudante.sesisenai.org.br
    Type Text    xpath=//*[@id="passwd"]    N1chol@s
    Click    xpath=//*[@id="header"]/div[2]/div/div/nav/div[2]/a





 

