*** Settings ***
Resource    resources/base/Funcional.robot

Test Setup    Iniciar Navegador
Test Teardown    Finalizar Teste

*** Test Cases ***

Deve Cadastrar Usuario
    Click    text=Novo Usuário
    Type Text    xpath=//*[@id='exampleInputEmail1']    nickfdemoura@gmail.com
    Type Text    xpath=//*[@id='exampleInputPassword1']    123456
    Type Text    xpath=//*[@id='confirma']    123456
    Click    xpath=//*[@type='submit']
    Wait For Elements State    text='Login'




    
    

