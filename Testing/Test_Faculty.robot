*** Settings ***
Library    SeleniumLibrary
Library    DateTime 
Library    ExcelLibrary
Library    ExcelRobot  


*** Variables ***
${url}    https://dev-portal.ken42.com/
${browser}    chrome
${Faculty_email}    faculty@ken42.onmicrosoft.com
${Faculty_pass}    BAdv1V0xg7Pfe54qZxGuJA 


*** Test Cases ***
VKS_faculty
    ${CurrentDate}    Get Current Date    result_format=%Y-%m-%d
    Log    ${CurrentDate}
    Open Excel    C:/Users/CHROME/Desktop/VKS_Portal.xlsx
    ${BaseUrl}=    Read Cell Data By Name    Faculty_Login    A2    
    ${FIn_username}=    Read Cell Data By Name    Faculty_Login    B2   
    ${Fin_password}=    Read Cell Data By Name    Faculty_Login    C2    
    ${Fva_username}=    Read Cell Data By Name    Faculty_Login    B3
    ${Fva_password}=    Read Cell Data By Name    Faculty_Login    C3
    Close All Excel Documents        
    Open Browser    ${BaseUrl}    ${browser}
    wait
    Maximize Browser Window
    Click Button    xpath=//*[@id="app"]/div/main/div[2]/div[2]/form/div[2]/div/button
    wait     
    Select Window    New     
    # Input Text    xpath=//*[@id="identifierId"]    ${FIn_username}
    # Click Element    xpath=//*[@id="identifierNext"]/div/button/div[2]
    # Page Should Contain    This username may be incorrect. Make sure you typed it correctly. Otherwise, contact your admin.    
    wait
    Input Text    xpath=//*[@id="identifierId"]    ${Fva_username}
    Click Element    xpath=//*[@id="identifierNext"]/div/button/div[2]
    # wait
    # Input Text     xpath=//*[@id="password"]/div[1]/div/div[1]/input   ${Fin_password}
    # Click Element    xpath=//*[@id="identifierNext"]/div/button/div[2]
    # Page Should Contain    Your account or password is incorrect. If you don't remember your password, reset it now. 
    wait   
    Input Text     xpath=//*[@id="password"]/div[1]/div/div[1]/input   ${Fva_password}
    Click Element    //*[@id="passwordNext"]/div/button/div[2]
    Select Window    MAIN
    Sleep    15       
    Element Text Should Be    xpath=//*[@id="app"]/div/div/header/div/header/div/h6    FACULTY PORTAL
    wait        
    Click Element    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div[2]/div[2]/div/div/div/div[1]/div/div
    wait
    Click Button    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[2]/div/div[3]/div[2]/p/button
    Sleep    10    
    Select Window    BigBlueButton - 2020-LIT-NCEPP-PP-M2-B
    Sleep    10    
    Click Element    xpath=/html/body/div[2]/div/div/header/button
    wait
    Element Text Should Be    xpath=//*[@id="app"]/main/section/div[1]/header/div/div[1]/div[2]/h1    2020-LIT-NCEPP-PP-M2-B
    wait
    Select Window    Portal 
    wait
    # Click Element    xpath=//*[@id="app"]/div/div/div/div/div/div[3]/div[1]/ul/a[1]/div
    # wait
    # Click Element    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div/div[2]/div[7]/div[1]/div[2]/div[2]/div/div/div/div[1]/div/div
    # wait  
    Click Button    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[2]/div/div[4]/div[2]/a/button 
    wait
    Element Text Should Be    xpath=//*[@id="app"]/div/div/main/div[2]/div[1]/div/div[1]/h6    Literacy-Mont-II
    Sleep    10    
    Select Checkbox    xpath=//*[@id="app"]/div/div/main/div[2]/div[2]/div/div[1]/div/div/div[4]/div/div[3]/p/label/span[1]/span[1]/input
    wait
    Checkbox Should Be Selected    xpath=//*[@id="app"]/div/div/main/div[2]/div[2]/div/div[1]/div/div/div[4]/div/div[3]/p/label/span[1]/span[1]/input
    wait
    Click Button    xpath=//*[@id="app"]/div/div/main/div[2]/div[2]/div/div[1]/div/div/p/button    
    wait
    Unselect Checkbox    xpath=//*[@id="app"]/div/div/main/div[2]/div[2]/div/div[1]/div/div/div[4]/div/div[3]/p/label/span[1]/span[1]/input
    Checkbox Should Not Be Selected    xpath=//*[@id="app"]/div/div/main/div[2]/div[2]/div/div[1]/div/div/div[4]/div/div[3]/p/label/span[1]/span[1]/input
    wait
    Select Window    BigBlueButton - 2020-LIT-NCEPP-PP-M2-B
    wait
    Click Element    xpath=/html/body/div/main/section/div[1]/header/div/div[1]/div[3]/div/button[1]/span[1]    
    wait
    Click Element    xpath=//*[@id="app"]/main/section/div[1]/header/div/div[1]/div[3]/div/div/div/ul/li[7]    
    wait
    Click Element    xpath=/html/body/div[2]/div/div/div[1]/div/div[2]/button[1]
    Sleep    10    
    # Close Window
    Select Window    Portal
    # Click Button    xpath=//*[@id="app"]/div/div/main/div[2]/div[1]/div/div[2]/button      
    # Sleep    10        
    # Select Window    Ken42 Online Classroom - CSE - Course I - Offering A Term 1
    # Sleep    10    
    # Click Element    xpath=//*[@id="tippy-79"]/span[1]
    # wait
    # Element Text Should Be    xpath=//*[@id="app"]/main/section/div[1]/header/div/div[1]/div[2]/h1    CSE - Course I - Offering A Term 1
    # wait
    # Element Text Should Be    xpath=//*[@id="app"]/main/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[1]/div/div[1]/div/div[2]/span/span    Debankur G 
    wait
    Click Element    xpath=//*[@id="app"]/div/div/div/div/div/div[3]/div[1]/ul/a[1]/div  
    wait      
    Click Image    xpath=//*[@id="app"]/div/div/header/div/header/div/div[2]/div/div[4]/button/span[1]/img
    wait
    Click Element    xpath=//*[@id="menu-appbar"]/div[3]/ul/li/div 
    wait
    Close Browser      
    
    
ThirdTest
    Open Browser    ${url}    ${browser}
    wait
    Maximize Browser Window
    Click Button    xpath=//*[@id="app"]/div/main/div[2]/div[2]/form/div[2]/div/button
    wait
    Select Window    New     
    Input Text    xpath=//*[@id="i0116"]   faculty@ken42.onmicrosoft.com
    Click Button    xpath=//*[@id="idSIButton9"]
    Sleep    4    
    Input Text    xpath=//*[@id="i0118"]    BAdv1V0xg7Pfe54qZxGuJA
    Click Button    xpath=//*[@id="idSIButton9"]
    wait
    Select Window    MAIN
    Sleep    10       
    Element Text Should Be    xpath=//*[@id="app"]/div/div/header/div/header/div/h6    FACULTY PORTAL
    wait
    Click Element    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div[2]/div[2]/div/div/div/div[1]/div/div    
    wait
    Click Button    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[2]/div/div[3]/div[2]/p/button
    Sleep    10    
    Select Window    Ken42 Online Classroom - CSE - Course I - Offering A Term 1
    Sleep    10    
    Click Element    xpath=//*[@id="tippy-79"]/span[1]/i
    wait
    Element Text Should Be    xpath=//*[@id="app"]/main/section/div[1]/header/div/div[1]/div[2]/h1    CSE - Course I - Offering A Term 1  
    wait
    # Click Image    xpath=//*[@id="app"]/div/div/header/div/header/div/div[2]/div/div[4]/button/span[1]/div/img    
    # wait
    # Click Element    xpath=//*[@id="menu-appbar"]/div[3]/ul/li/a    
    # wait
    Open Browser    https://dev-portal.ken42.com    firefox
    wait
    Click Button    xpath=//*[@id="app"]/div/main/div[2]/div[2]/form/div[2]/div/button
    wait
    Select Window    New     
    Input Text    xpath=//*[@id="i0116"]   student1@ken42.onmicrosoft.com
    Click Button    xpath=//*[@id="idSIButton9"]
    Sleep    4    
    Input Text    xpath=//*[@id="i0118"]    Happy@123
    Click Button    xpath=//*[@id="idSIButton9"]
    wait
    Select Window    MAIN
    Sleep    2    
    Element Text Should Be    xpath=//*[@id="app"]/div/div/header/div/header/div/h6    STUDENT PORTAL 
    wait
    Click Element    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div[2]/div[2]/div/div/div/div[1]/div/div
    wait
    Click Element    xpath=/html/body/div[2]/div/div/div[1]/div/div[2]/button[1]/span
    Sleep    10    
    Switch Browser    1   
    wait
    # Element Text Should Be    xpath=//*[@id="app"]/main/section/div[1]/header/div/div[1]/div[2]/h1    CSE - Course I - Offering A Term 1  
    # wait
    # Click Element    xpath=/html/body/div/main/section/div[1]/header/div/div[1]/div[3]/div/button[1]/span[1]    
    # wait
    # Click Element    xpath=/html/body/div/main/section/div[1]/header/div/div[1]/div[3]/div/div/div/ul/li[7]/span[1]    
    # wait
    
    
    Sleep    2    
    Close All Browsers
*** Keywords ***
   

wait
    Sleep    5 