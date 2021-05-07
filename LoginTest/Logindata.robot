*** Settings ***
Library    SeleniumLibrary    
Resource    D:/Eclipse work/Test1/Resourse/Resoursefile.resource
Library    DataDriver    D:/Eclipse work/Test1/LoginTest/Faculty_Login.xlsx 
Suite Setup    Openbrowser
Suite Teardown    closebrowser
Test Template    Invalid_Login

    
*** Test Cases ***

Verify Invalid Login    {Username}    {Password}


*** Keywords ***
Invalid_Login
    [Arguments]    ${Username}    ${Password}
    HomeButton  
    InputUsername    ${Username}
    Sleep    5    
    LoginButton
    Sleep    5    
    InputPassword   ${Password}
    Sleep    5    
    LoginButton

   