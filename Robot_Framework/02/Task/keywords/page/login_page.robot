*** Settings ***
Resource    ./import.robot

*** Keywords ***
Fill email
    [Arguments]    ${email}
    SeleniumLibrary.Input Text  ${login_locator.email_container}    ${email}

Fill password  
    [Arguments]    ${password}  
    SeleniumLibrary.Input Text    ${login_locator.password_container}    ${password}

Click login button
    SeleniumLibrary.Click Button    ${login_locator.log_in_btn} 

Click sign up button 
    common.Wait and click    ${login_locator.sign_up_btn}    ${login_locator.sign_up_btn}