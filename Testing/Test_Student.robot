*** Settings ***
Library    SeleniumLibrary
Library    DateTime 
Library    ExcelLibrary
Library    ExcelRobot            

 
      


*** Variables ***
${browser}    chrome
         
    
*** Test Cases ***
VKS_Student
    Open Excel    C:/Users/CHROME/Desktop/VKS_Portal.xlsx
    ${BaseUrl}=    Read Cell Data By Name    Student_Login    A2    
    ${In_Username}=    Read Cell Data By Name    Student_Login    B2                 
    ${In_Password}=    Read Cell Data By Name    Student_Login    C2    
    ${Val_Username}=    Read Cell Data By Name    Student_Login    B3        
    ${Val_Password}=    Read Cell Data By Name    Student_Login    C3      
    Close All Excel Documents    
    Open Browser    ${BaseUrl}    ${browser}
    wait
    Maximize Browser Window
    Click Button    xpath=//*[@id="app"]/div/main/div[2]/div[2]/form/div[2]/div/button
    wait
    Select Window    New     
    Input Text    xpath=//*[@id="identifierId"]    ${In_Username}
    wait
    Click Element    xpath=//*[@id="identifierNext"]/div/button/div[2]
    # Page Should Contain    This username may be incorrect. Make sure you typed it correctly. Otherwise, contact your admin.    
    wait
    Input Text    xpath=//*[@id="identifierId"]    ${Val_Username}
    Click Element    xpath=//*[@id="identifierNext"]/div/button/div[2]
    wait
    Input Text    xpath=//*[@id="password"]/div[1]/div/div[1]/input   ${In_Password}
    Click Element    xpath=//*[@id="passwordNext"]/div/button/div[2]
    # Page Should Contain    Your account or password is incorrect. If you don't remember your password, reset it now. 
    wait   
    Input Text    xpath=//*[@id="password"]/div[1]/div/div[1]/input   ${Val_Password}
    Click Element    xpath=//*[@id="passwordNext"]/div/button/div[2]
    Select Window    MAIN
    Sleep    15
    Element Text Should Be    xpath=//*[@id="app"]/div/div/header/div/header/div/h6    STUDENT PORTAL      
    Sleep    5    
    Click Image    xpath=//*[@id="app"]/div/div/header/div/header/div/div[2]/div/div[4]/button/span[1]/img       
    wait
    Click Element    xpath=//*[@id="menu-appbar"]/div[3]/ul/li[1]/a
    wait
    # Execute Javascript    window.location.reload(true);
    Sleep    10    
    Element Text Should Be    xpath=//*[@id="app"]/div/div/main/div[2]/div[2]/div[1]/div/div[2]/div[2]/p    Dummy User1       
    Sleep    10    
    Click Element    xpath=//*[@id="simple-tabpanel-0"]/div/div/div/div/div[3]/div/p    
    wait
    ${Attendance}=    Get Text    xpath=//*[@id="app"]/div/div/main/div[2]/div[2]/div[2]/div/div[1]/div/div/div/div[3]/div[1]/div/div/div/div[1]/p[2]
    wait
    Log    ${Attendance}
    wait
    Click Element    xpath=//*[@id="app"]/div/div/main/div[2]/div[1]/p    
    Sleep    15   
    Click Element    xpath=//*[@id="app"]/div/div/main/div[2]/div/div[2]/div/div[1]/div/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div[2]/div[2]/div/div/div/div[1]/div/div
    wait
    Click Button    xpath=//*[@id="popup"]/div/div[3]/div[2]/p/button
    Sleep    10   
    # Handle Alert    action=ACCEPT 
    # wait
    Click Image    xpath=//*[@id="app"]/div/div/header/div/header/div/div[2]/div/div[4]/button/span[1]/img
    wait
    Click Element    //*[@id="menu-appbar"]/div[3]/ul/li[2]/div 
    wait
    Close Browser
    
    

               
    
*** Variables ***
*** Keywords ***
wait
    
    Sleep    5 
    
   
    
        
    
       
    

    

