*** Settings ***
Library    SeleniumLibrary
Variables    config.yaml


*** Keywords ***
Login
    Open Browser    ${app_url}    browser=chrome
    Input Text    //span[@c='Username']/following-sibling::input    ${credentials.username}
    Input Text    //span[@c='Password']/following-sibling::input    ${credentials.password}
    Sleep    5s
    Close Browser

*** Test Cases ***
Test Print User Info
    Login