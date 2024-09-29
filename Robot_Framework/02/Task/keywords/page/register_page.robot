*** Settings ***
Resource    ./import.robot

*** Keywords ***

Input email
    [Arguments]    ${email}    
    SeleniumLibrary.Input Text    ${register_locator.username_container}    ${email}

Input password
    [Arguments]    ${password}    
    SeleniumLibrary.Input Text    ${register_locator.password_container}    ${password}

Input confirm password
    [Arguments]    ${cf_password}
    SeleniumLibrary.Input Text    ${register_locator.confirm_password_container}    ${cf_password}

Click register button
    Click Element   ${register_locator.submit_btn}
    common.Wait and click    ${register_locator.ok_btn}    ${register_locator.ok_btn}
