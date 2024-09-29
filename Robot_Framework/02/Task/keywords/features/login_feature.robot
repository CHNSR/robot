*** Settings ***
Resource    ../page/import.robot
*** Keywords ***
Login
    [Arguments]    ${email}    ${password}
    common.Click user icon
    login_page.Fill email    ${email}
    login_page.Fill password    ${password}
    login_page.Click login button 
    common.Wait and click    ${login_locator.ok_btn}    ${login_locator.ok_btn}