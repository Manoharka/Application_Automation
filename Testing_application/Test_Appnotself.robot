*** Settings ***
Library    SeleniumLibrary  
Library    BuiltIn   
Library    String  
Library    AutoItLibrary 
Library    ExcelLibrary    
Library    ExcelRobot        


*** Variables ***
${UploadFile}    //*[@id="root"]/div/div/div[3]/div[2]/div/form/div[1]/div/div/div[2]/div/div[1]/div/div[2]/button/span[1]
${browser1}    chrome
${GaurdianFname}    Ram
${GuardianLname}    sharma    


*** Test Cases ***
ApplicationPortal_NotSelf
    Open Excel    D:/Eclipse work/Test1/Testing_application/Application_Portal.xlsx
    ${Baseurl}=    Read Cell Data By Name    App_Notself    A2     
    ${Regfname}=    Read Cell Data By Name    App_Notself    B2    
    ${RegLname}=    Read Cell Data By Name    App_Notself    C2    
    ${Regemail}=    Read Cell Data By Name    App_Notself    D2        
    ${Regphno}=    Read Cell Data By Name    App_Notself    E2        
    ${SelfFname}=    Read Cell Data By Name    App_Notself    F2       
    ${SelfLname}=    Read Cell Data By Name    App_Notself    G2       
    ${MotherFname}=    Read Cell Data By Name    App_Notself    H2        
    ${MotherLname}=    Read Cell Data By Name    App_Notself    I2     
    Close All Excel Documents             
    Open Browser    ${Baseurl}   ${browser1}
    wait    
    Maximize Browser Window
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/ul[2]/li/div/div[2]    
    wait
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/ul[2]/li/ul/div/div/li[1]/div/div[2]    
    wait
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/ul[2]/li/ul/div/div/li[1]/ul/div/div/div[3]/div[1]/div/table/tbody/tr/td[4]/button   
    wait    
    Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[2]/div/div[1]/div/div[2]/input    ${RegFName}    
    wait    
    Input Text    xpath=//div[2]/div/div[2]/div/div[2]/input   ${RegLName}    
    wait    
    Input Text    xpath=//div[1]/div[3]/div/div[2]/input    ${Regemail}   
    wait
    # Unselect Checkbox    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[5]/div[1]/div/div/div/label/span[1]/span[1]/input
    # wait  
    Click Element    xpath=//*[@id="mui-component-select-Relation"]    
    wait
    Click Element    xpath=//*[@id="menu-Relation"]/div[3]/ul/li[1]
    wait  
    Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[5]/div[1]/div[2]/div/div/div/div[2]/div/div/div[2]/div
    wait   
    Click Element    xpath=//*[@id="menu-"]/div[3]/ul/li[1]
    wait   
    Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[5]/div[1]/div[2]/div/div/div/div[2]/input    ${Regphno}
    wait      
    Click Button    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[5]/div[2]/button
    wait       
    ${message}=    Handle Alert    action=ACCEPT
    wait   
    ${message1}=    Fetch From Right    ${message}    is${SPACE}
    wait    
    Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[5]/div[3]/div[1]/div[1]/div[2]/input    ${message1}    
    Sleep    10    
    Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[5]/div[3]/div[2]/button/span[1]    
    wait
    # # Element Text Should Be    xpath=//*[@id="root"]/div/div/div[1]/div/header/div/div[1]/div[2]/p    BTECH - Civil Engineering
    # # wait   
    Click Button    xpath=//*[@id="root"]/div/div/div[2]/div/div[2]/a/button    
    wait
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div/div[1]/div/div[2]/input    ${SelfFname}
    wait
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div/div[2]/div/div[2]/input    ${SelfLname}       
    wait    
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div/div[3]/div/div[2]/input    24/03/1992
    wait    
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div/div[5]/div/div[2]/button[1]/span[1]    
    wait    
    Click Element    xpath=//*[@id="mui-component-select-nationality"]    
    wait   
    Click Element    xpath=//*[@id="menu-nationality"]/div[3]/ul/li[1]
    wait    
    Click Element    xpath=//*[@id="mui-component-select-religion"]    
    wait   
    Click Element    xpath=//*[@id="menu-religion"]/div[3]/ul/li[1]
    wait
    # # Click Element    xpath=//*[@id="mui-component-select-caste"]
    # # wait   
    # # Click Element    xpath=//*[@id="menu-caste"]/div[3]/ul/li[3]
    # # wait    
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div[2]/div/div[2]/button[2]/span[1]    
    wait   
    # Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div[1]/div/div[2]/input    ${FatherFname}
    # wait
    # Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div[2]/div/div[2]/input    ${FatherLname}
    # wait
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div/div[2]/div/div[1]/div/div[2]/input    ${MotherFname}    
    wait
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div/div[2]/div/div[2]/div/div[2]/input    ${MotherLname}
    wait
    # # Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div/div[2]/div/div[1]/div/div[2]/input    ${GaurdianFname}
    # # wait
    # # Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div/div[2]/div/div[2]/div/div[2]/input    ${GuardianLname}
    # # wait
    # # Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div/div/div[2]/div   
    # # wait
    # # Click Element    xpath=//*[@id="menu-"]/div[3]/ul/li[1]    
    # # wait
    # # Element Text Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[4]/div/div/div[1]/div/div[1]/p    BROTHER'S DETAILS
    # # wait
    # # Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div/div[2]/div/div[1]/div/div[2]/input    Samson    
    # # wait                
    # # Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div/div[2]/div/div[2]/div/div[2]/input    Sharma
    # wait                
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[4]/div/div[2]/button[2]/span[1]
                           # #//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[5]/div/div[2]/button[2]/span[1]    
    wait
    Element Text Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[1]/div/div[1]/p    RESIDENTIAL ADDRESS
    wait
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div[2]/div/div/div[2]/input    No.123    
    wait
    # # Input Text    xpath=//*[@id="street"]    Bengalore Road    
    # # wait     
    Click Element    xpath=//*[@id="state"]   
    wait
    Click Element    xpath=//*[@id="menu-addresses[0].MailingState"]/div[3]/ul/li[10]   
    wait
    Click Element    xpath=//*[@id="mui-component-select-addresses[0].MailingCity"]
    wait
    Click Element    xpath=//*[@id="menu-addresses[0].MailingCity"]/div[3]/ul/li[1]    
    wait
    Input Text    xpath=//*[@id="pincode"]    560098 
    wait   
    # # Input Text    xpath=//*[@id="locality"]    Bengalore
    # # wait
    # # Input Text    xpath=//*[@id="pincode"]    560010
    # # wait
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div[2]/button[2]/span[1]    
    wait
    Element Text Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[1]/div/div[1]/p    EDUCATIONAL QUALIFICATIONS
    wait
    Input Text    xpath=//*[@id="Qualifying Exam"]    SSC    
    wait
    Click Element    xpath=//*[@id="Board"]    
    wait
    Click Element    xpath=//*[@id="menu-educations[0]['Board']"]/div[3]/ul/li[2]    
    wait
    Click Element    xpath=//*[@id="markingScheme"]    
    wait
    Click Element    xpath=//*[@id="menu-educations[0]['Marking Scheme']"]/div[3]/ul/li[1]    
    wait
    Input Text    xpath=//*[@id="score"]    8.0    
    wait
    Click Element    xpath=//*[@id="maximumMarks"]    
    wait
    Click Element    xpath=//*[@id="menu-educations[0]['Maximum Marks']"]/div[3]/ul/li[1]    
    wait
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[6]/div/div[2]/div/div/input[2]    12     
    wait
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[6]/div/div[2]/div/div/input[3]    2018    
    wait
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[7]/button[1]/span[1]
    wait                   
    Input Text    xpath=//*[@id="subject"]    Kannada    
    wait
    Input Text    xpath=/html/body/div[1]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[7]/div[2]/div/div[2]/input    9.0 
    wait
    Input Text    xpath=//*[@id="maxScore"]    10
    wait    
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div[2]/button[2]/span[1]    
    wait  
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight) 
    wait              
    Click Element    ${UploadFile}
    wait 
    Wait For Active Window    WindowTitle=Open    
    wait
    Win Activate    Open    &Edit
    wait
    Send    download.jpg
    wait
    Control Click    Open    &Open    [CLASS:Button;INSTANCE:1]    LEFT
    wait  
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div[2]/div/div/div[2]/div/div/div/div[2]/button/span[1]    
    wait
    Wait For Active Window    WindowTitle=Open    
    wait
    Win Activate    Open    &Edit
    wait
    Send    PDF.png
    wait
    Control Click    Open    &Open    [CLASS:Button;INSTANCE:1]    LEFT
    wait  
    Element Text Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div[1]/div/div/div[2]/div/div[1]/div/div[2]/div/div/div[1]/p    Uploaded
    wait
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    wait
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div[4]/div/div[2]/button[2]/span[1]    
    wait
    Select Checkbox    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div[1]/div/div/p[11]/div/div/label/span[1]/span[1]/input
    wait
    Checkbox Should Be Selected    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div[1]/div/div/p[11]/div/div/label/span[1]/span[1]/input
    Sleep    10    
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div[2]/div/div[2]/button[2]/span[1]    
    wait
    # # # Element Text Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div[1]/div/div/div/div[1]/div[2]/p[1]    Application Fee
    # # # wait
    
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    #Fee Pay
    # Sleep    10   
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div[1]/div/div/div/div[2]/button    
    # Sleep    20 
    # Switch Browser    1
    # ${Title}=    Get Title       
    # #Element Text Should Be    xpath=//*[@id="user-details"]/div/div[1]/div/span[1]    +91${Regphno}
    # Select Window    ${Title}
    # Sleep    20 
    # # Get Text    xpath=//*[@id="amount"]/span[2]
    # # wait
    # Click Image    xpath=//*[@id="form-common"]/div[1]/div/div/div[2]/div[1]/div/button[1]/div/i/img
    # Sleep    10       
    # Click Element    xpath=//*[@id="footer-cta"]   
    # wait
    # Select Window    
    # wait
    # Click Element    xpath=/html/body/form/button[1]   
    # Switch Window    Current
    # wait
    # Click Element    xpath=//*[@id="root"]/div/div/p/a/button/span[1]    
    # wait
    #EndFeepay
    Click Element    xpath=//*[@id="root"]/div/div/header/div/div[1]/div[3]/div/div/div    
    wait
    Click Element    xpath=//*[@id="customized-menu"]/div[3]/ul/li[1]   
    wait
    Click Element    xpath=//*[@id="root"]/div/div/header/div/div[1]/div[3]/div/div/div    
    wait
    Click Element    xpath=//*[@id="customized-menu"]/div[3]/ul/li[3]
    wait
    #Retrivedeatils
    Click Element    xpath=//*[@id="root"]/div/div/header/div/div[1]/a/button    
    wait
    Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[2]/div/div/div/div/div[2]/input    ${Regphno}    
    wait
    Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[3]/button/span[1]    
    wait
    ${message2}=    Handle Alert    action=ACCEPT
    wait   
    ${message21}=    Fetch From Right    ${message2}    is${SPACE}
    wait
    Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[4]/div[1]/div/div[2]/input    ${message21}
    wait
    Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[4]/div[2]/div/div/button    
    Sleep    10    
    Click Element    xpath=//*[@id="root"]/div/div/header/div/div[1]/div[3]/div/div/div    
    wait
    Click Element    xpath=//*[@id="customized-menu"]/div[3]/ul/li[3]/div[2]/div/span
    wait
          
    Close All Browsers
    #LoginDetails
    # Click Element    xpath=//*[@id="MUIDataTableBodyRow-2"]/td[7]/div[2]/div/button/span[1]    
    # wait
    # Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[2]/p    
    # wait
    # Unselect Checkbox    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[2]/div/div/div[2]/div/div/div/label/span[1]/span[1]/input
    # wait
    # Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[2]/div/div/div[1]/div/div[2]/input    ${Regphno}    
    # wait
    # Click Element    xpath=//*[@id="mui-component-select-Relation"]    
    # wait
    # Click Element    xpath=//*[@id="menu-Relation"]/div[3]/ul/li[1]    
    # wait
    # Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[3]/button/span[1]    
    # wait
    # ${message2}=    Handle Alert    action=ACCEPT
    # wait   
    # ${message21}=    Fetch From Right    ${message2}    is${SPACE}
    # wait
    # Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[4]/div[1]/div/div[2]/input    ${message21}    
    # wait
    # Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[4]/div[2]/div/div/button    
    # wait
    # Click Element    xpath=//*[@id="root"]/div/div/div[2]/div/div[2]/a/button/span[1]    
    # wait
       
             
      
  
        
    
            
        
       
                
                
           
         
*** Keywords ***
wait
    Sleep    5
    

    
