*** Settings ***
Library    SeleniumLibrary
     
*** Variables ***
${url}    https://dev-portal.ken42.com
${browser}    chrome








*** Keywords ***
Openbrowser
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
HomeButton
    Click Button    xpath=//*[@id="app"]/div/main/div[2]/div[2]/form/div[2]/div/button
    Sleep    5    
    Select Window    New
    Sleep    5  
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




