*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Log say hello
    [Arguments]    ${text}=hello
    Log To Console    ${text}
*** Test Cases ***
Tc01 - say hello
    Log say hello    Hello naaa
Task02 - use defalut text
    Log say hello




