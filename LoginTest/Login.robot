*** Settings ***

Library           SeleniumLibrary
Library           Collection
Library           ExcelLibrary
Library           String
Library    ExcelRobot
Library         

 *** Variables ***
${Example}  One  Two  Three  

*** Test Cases ***
testcase1
    Open Excel    C:/Users/CHROME/Desktop/Stud_Login.xlsx    
    Check Cell Type    Sheet1    1    1    TEXT
    ${getcolumncount}=    Get Column Count    Sheet1
    ${getrow}=    Get Row Count    Sheet1
       
    
    :For    ${i}    IN RANGE     1       ${getrow}
    \    ${user}    Read Cell Data By Name    Sheet1    A${i}
    \    ${password}    Read Cell Data By Name    Sheet1    B${i}
    log    ${user}
    log    ${password}
    Close All Excel Documents 
    # Create Excel Document    2
    # Write Excel Cell    1    1    student
    # Save Excel Document    Student.xlsx        
    # Close All Excel Documents
    
testcase2
    ${value}=  Evaluate  random.choice     ${Example}  random
    log to console  \nvalue: ${value}
         
                 