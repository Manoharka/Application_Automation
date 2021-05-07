*** Settings ***
Library    SeleniumLibrary
     
*** Variables ***
${url}    https://dev-portal.ken42.com
${browser}    chrome

*** Test Cases ***





*** Keywords ***
Openbrowser
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    Maximize Browser Window
InputUsername
    [Arguments]    ${Username}   
    Input Text    xpath=//*[@id="i0116"]    ${Username}
    
    
InputPassword
    [Arguments]    ${Password}     
    Input Text    xpath=//*[@id="i0118"]   ${Password}
    
    
LoginButton
    Click Button    xpath=//*[@id="idSIButton9"]
    
closebrowser
    Close All Browsers




