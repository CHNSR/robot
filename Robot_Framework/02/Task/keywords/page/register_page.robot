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

Submit
    
    Click Element   ${register_locator.submit_btn}
    Wait Until Element Is Visible    ${register_locator.ok_btn}
    Click Element    ${register_locator.ok_btn}
