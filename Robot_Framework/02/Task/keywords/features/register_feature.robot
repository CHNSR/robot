*** Settings ***
Resource    ../page/import.robot

*** Keywords ***
Register
    [Arguments]    ${email}    ${password}    ${confirm_password}
    common.Click user icon
    login_page.Click Sign up button
    register_page.Input email    ${email}
    register_page.Input password    ${password}
    register_page.Input confirm password    ${confirm_password}
    register_page.Click register button
    common.Click user icon
