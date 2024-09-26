*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Open url
    [Arguments]    ${url}=https://www.google.com/    ${browser}=gc
    Open Browser    ${url}    ${browser}

Input-search
    [Arguments]    ${value}
    Input Text    id=APjFqb    ${value}

Log say hello4
    [Arguments]    ${text}=Hello
    Log To Console    ${text}   

Return text search
    [Arguments]    ${text}
    ${textsearch}    Set Variable    ${text}
    RETURN    ${textsearch}    
