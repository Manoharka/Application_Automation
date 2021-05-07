*** Settings ***
Library    SeleniumLibrary  
Library    BuiltIn   
Library    String  
Library    AutoItLibrary 
Library    ExcelLibrary    
Library    ExcelRobot
        


*** Variables ***
${UploadFile}    //*[@id="root"]/div/div/div[3]/div[2]/div/form/div[1]/div[1]/div/div[2]/div/div[1]/div/div[2]/button/span[1]
${browser1}    chrome
# ${GaurdianFname}    Ram
# ${GuardianLname}    sharma    


*** Test Cases ***
Demo_School
    LoginwithOTP
    BasicInformation
    FamilyInformation
    ContactDetails
    EducationalQualification
    UploadDocument
    Declaration
    Dashboard
    Signout
    Close All Browsers
    # Login
    # VerifyData
    
    
    # Element Text Should Be    xpath=//*[@id="root"]/div/div/div[1]/div/header/div/div[1]/div[2]/p    BTECH - Civil Engineering
    # wait   
    
    
    
    
   
    
    
    
    
    
            
        
       
                
                
           
         
*** Keywords ***
wait
    Sleep    5
    
LoginwithOTP
    Open Excel    C:/Users/CHROME/Desktop/Application_Portal.xlsx
    ${Baseurl}=    Read Cell Data By Name    Demo_school    A2      
    ${Log_phno}=    Read Cell Data By Name    Demo_school    B2    
    # ${RegLname}=    Read Cell Data By Name    App_Self    C2    
    # ${Regemail}=    Read Cell Data By Name    App_Self    D2        
    # ${Regphno}=    Read Cell Data By Name    App_Self    E2            
    Close All Excel Documents             
    Open Browser    ${Baseurl}   ${browser1}
    wait    
    Maximize Browser Window
    Sleep    5    
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/ul[2]/li/div/div[2]    
    # Sleep    5
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/ul[2]/li/ul/div/div/li[1]/div/div[2]    
    # Sleep    5
    Click Element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/div/form/div/div[2]/p   
    Sleep    5 
    Input Text    xpath=/html/body/div/div/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[2]/div/div/div/div/div[2]/input    ${Log_phno}
    Sleep    5       
    Click Button    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[3]/button
    Sleep    5    
    ${message}=    Handle Alert    action=ACCEPT
    Sleep    5   
    ${message1}=    Fetch From Right    ${message}    is${SPACE}
    Sleep    5    
    Input Text    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[4]/div[1]/div/div[2]/input    ${message1}    
    Sleep    10    
    Click Element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[4]/div[2]/div/button/span[1]    
    Sleep    5     
    Click Element    xpath=//*[@id="MUIDataTableBodyRow-1"]/td[7]/div[2]/div/button/span[1]    
    Sleep    5    
    Click Element    xpath=/html/body/div[3]/div[3]/div/form/div[2]/div[2]/div[3]/button/span[1]
    Sleep    5    
    Click Element    xpath=/html/body/div[4]/div[3]/div/div/div[3]/button[2]/span[1]    
    Sleep    5    
    Click Element    xpath=//*[@id="root"]/div/div/div[2]/div/div[2]/a/button/span[1]    
    Sleep    5    
        
    # Input Text    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/form/div/div[1]/div[2]/div/div/div/div/div[2]/input    ${RegFName}    
    # Sleep    5    
    # Input Text    xpath=//div[2]/div/div[2]/div/div[2]/input   ${RegLName}    
    # Sleep    5    
    # Input Text    xpath=//div[1]/div[3]/div/div[2]/input    ${Regemail}   
    # Sleep    5 
    # Select Checkbox    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[5]/div[2]/div/div/div/label/span[1]/span[1]/input
    # Sleep    5   
    
    
BasicInformation
    Click Button    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div/div/div[2]/button[2]
    Sleep    5   
    ${Student_name}=    Get Element Attribute    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div/div[2]/div/div[1]/div/div[2]/input     value  
    Sleep    5    
    Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div/div[2]/div/div[1]/div/div[2]/input    ${Student_name}
    Sleep    5 
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div/div[2]/div/div[3]/div/div[2]/input    22092012    
    Sleep    5       
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div/div[2]/div/div[5]/div/div[2]/button[2]/span[1]    
    Sleep    5    
    Click Element    xpath=//*[@id="mui-component-select-religion"]    
    Sleep    5    
    Click Element    xpath=//*[@id="menu-religion"]/div[3]/ul/li[1]    
    Sleep    5    
    Click Element    xpath=//*[@id="mui-component-select-Caste"]    
    Sleep    5    
    Click Element    xpath=//*[@id="menu-Caste"]/div[3]/ul/li[1]    
    Sleep    5    
    Click Button    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div[2]/div/div[2]/button[2]    
    Sleep    10        
    
FamilyInformation
   ${Father_name}=    Get Element Attribute    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div/div[1]/div/div/div[2]/div/div[1]/div/div[2]/input    value      
   Sleep    5    
   Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div/div[1]/div/div/div[2]/div/div[1]/div/div[2]/input    ${Father_name}    
   Sleep    5  
   ${Mother_name}=    Get Element Attribute    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div/div[2]/div/div/div[2]/div/div[1]/div/div[2]/input    value
   Sleep    5      
   Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div/div[2]/div/div/div[2]/div/div[1]/div/div[2]/input    ${Mother_name}
   Sleep    5    
   Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div/div[4]/div/div[2]/button[2]/span[1]    
   Sleep    10        
    
ContactDetails
   ${Address}=    Get Element Attribute    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div[1]/div/div[2]/div/div[1]/div/div[2]/input    value
   Sleep    5    
   Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div[1]/div/div[2]/div/div[1]/div/div[2]/input    ${Address}    
   Sleep    5    
   Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div[2]/button[2]/span[1]    
   Sleep    10            
EducationalQualification
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Click Element    xpath=/html/body/div[1]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div[2]/div    
    Sleep    5    
    Click Element    xpath=//*[@id="menu-educations[0]['Board']"]/div[3]/ul/li[5]    
    Sleep    5 
    Click Element    xpath=/html/body/div[1]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[3]/div/div[2]/div    
    Sleep    5    
    Click Element    xpath=//*[@id="menu-educations[0]['Marking Scheme']"]/div[3]/ul/li[1]    
    Sleep    5    
    Input Text    xpath=/html/body/div[1]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[4]/div/div[2]/input    9    
    Sleep    5    
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[5]/div/div[2]/div/div/input[2]    12    
    Sleep    5    
    Input Text    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div[2]/div/div[5]/div/div[2]/div/div/input[3]    2018    
    Sleep    5    
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div[2]/div[1]/div/div[2]/div/div/div[1]/label/span[1]/span[1]/input    
    Sleep    5    
    Click Element    xpath=/html/body/div[1]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div[2]/div[2]/div[2]/div/div[2]/div    
    Sleep    5    
    Click Element    xpath=//*[@id="menu-educations[1]['Board']"]/div[3]/ul/li[5]    
    Sleep    5    
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div[2]/button[2]/span[1]    
    Sleep    10    
       
               
UploadDocument
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight) 
    Sleep    5              
    Click Element    ${UploadFile}
    Sleep    5 
    Wait For Active Window    WindowTitle=Open    
    Sleep    5
    Win Activate    Open    &Edit
    Sleep    5
    Send    download.jpg
    Sleep    5
    Control Click    Open    &Open    [CLASS:Button;INSTANCE:1]    LEFT
    Sleep    5   
    # Choose File    ${UploadFile}    D:\Eclipse work\Test1\Testing_application\download.jpg
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div[2]/div/div/div[2]/div/div/div/div[2]/button/span[1]    
    # Sleep    5
    # Wait For Active Window    WindowTitle=Open    
    # Sleep    5
    # Win Activate    Open    &Edit
    # Sleep    5
    # Send    PDF.png
    # Sleep    5
    # Control Click    Open    &Open    [CLASS:Button;INSTANCE:1]    LEFT
    # Sleep    5  
    # Element Text Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div[1]/div/div/div[2]/div/div[1]/div/div[2]/div/div/div[1]/p    Uploaded
    # Sleep    5
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    5
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div[3]/div/div[2]/button[2]/span[1]    
    Sleep    5
    
Declaration
    Select Checkbox    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div/div[1]/div/div[5]/div/p[3]/div/div/div[1]/label/span[1]/span[1]/input
    Sleep    5
    Checkbox Should Be Selected    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div/div[1]/div/div[5]/div/p[3]/div/div/div[1]/label/span[1]/span[1]/input
    Sleep    10    
    Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/form/div/div[2]/div/div[2]/button[2]/span[1]    
    # # Sleep    5
    
Dashboard
      # # Element Text Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div[1]/div/div/div/div[1]/div[2]/p[1]    Application Fee
    # # Sleep    5
    
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    # Sleep    10   
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/div[1]/div/div/div/div[2]/button    
    # Sleep    20 
    
    #pay Fee
    # Switch Browser    1
    # ${Title}=    Get Title       
    # Element Text Should Be    xpath=//*[@id="user-details"]/div/div[1]/div/span[1]    +91${Regphno}
    # # Select Window    ${Title}
    # Sleep    20 
    # # Get Text    xpath=//*[@id="amount"]/span[2]
    # # Sleep    5
    # Click Image    xpath=//*[@id="form-common"]/div[1]/div/div/div[2]/div[1]/div/button[1]/div/i/img
    # Sleep    10       
    # Click Element    xpath=//*[@id="footer-cta"]   
    # Sleep    5
    # Select Window    
    # Sleep    5
    # Click Element    xpath=/html/body/form/button[1]   
    # Switch Window    Current
    # Sleep    5
    # Click Element    xpath=//*[@id="root"]/div/div/p/a/button/span[1]    
    # Sleep    5 
    #end Feepay
    
    Click Element    xpath=//*[@id="root"]/div/div/header/div/div[1]/div[3]/div/div/div    
    Sleep    5   
    Click Element    xpath=//*[@id="customized-menu"]/div[3]/ul/li[1]/div/div[2]/span    
    Sleep    5
    
Signout
    Click Element    xpath=//*[@id="root"]/div/div/header/div/div[1]/div[3]/div/div/div    
    Sleep    5
    Click Element   xpath=//*[@id="customized-menu"]/div[3]/ul/li[3]/div/div[2]/span   
    Sleep    10 
    
    
# Login
    # ${Regfname}=    Read Cell Data By Name    App_Self    B2    
    # ${RegLname}=    Read Cell Data By Name    App_Self    C2    
    # ${Regemail}=    Read Cell Data By Name    App_Self    D2        
    # ${Regphno}=     Read Cell Data By Name    App_Self    E2
    # Click Button    xpath=//*[@id="MUIDataTableBodyRow-4"]/td[7]/div[2]/div/button
    # Sleep    5
    # Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[2]/p    
    # Sleep    5
    # Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[2]/div/div/div[1]/div/div[2]/input    ${Regphno}    
    # Sleep    5
    # Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[3]/button/span[1]    
    # Sleep    5
    # ${message1}=    Handle Alert    action=ACCEPT
    # Sleep    5   
    # ${message11}=    Fetch From Right    ${message1}    is${SPACE}
    # Sleep    5
    # Input Text    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[4]/div[1]/div/div[2]/input    ${message11} 
    # Sleep    5
    # Click Element    xpath=/html/body/div[2]/div[3]/div[1]/form/div/div[1]/div[4]/div[2]/div/div/button/span[1]  
    # Sleep    5 
    # Click Element    xpath=//*[@id="root"]/div/div/div[2]/div/div[2]/a/button/span[1]    
    # Sleep    5
    
# VerifyData
    # ${Regfname}=    Read Cell Data By Name    App_Self    B2    
    # ${RegLname}=    Read Cell Data By Name    App_Self    C2
    # ${FatherFname}=    Read Cell Data By Name    App_Self    F2        
    # ${MotherFname}=    Read Cell Data By Name    App_Self    H2         
    # Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div/div[1]/div/div[2]/input    ${RegFName}
    # Sleep    5
    # Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div/div[2]/div/div[2]/input    ${RegLName}    
    # Sleep    5
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div[2]/div/div[2]/button[2]/span[1]    
    # Sleep    5
    # Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div[1]/div/div[2]/input    ${FatherFname}    
    # Sleep    5
    # Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[2]/div/div/div[2]/div/div[1]/div/div[2]/input    ${MotherFname}
    # Sleep    5
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[4]/div/div[2]/button[2]/span[1]    
    # Sleep    5
    # Textfield Value Should Be    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[1]/div/div/div[2]/div/div[2]/div/div/div[2]/input    No.123    
    # Sleep    5
    # Click Element    xpath=//*[@id="root"]/div/div/div[3]/div[2]/div/div/form/div[3]/div/div[2]/button[2]/span[1]    
    # Sleep    5
    # Click Element    xpath=//*[@id="root"]/div/div/header/div/div[1]/div[3]/div/div/div    
    # Sleep    5
    # Click Element    xpath=//*[@id="customized-menu"]/div[3]/ul/li[3]/div[2]/div/span    
    # Sleep    5
    # Close All Browsers
    

    

    



    
