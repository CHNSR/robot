*** Settings ***
Library    SeleniumLibrary
Resource    ../secsion01/keyword/keyword.robot

*** Variables ***
${search}    robot

*** Test Cases ***
TC01
    [Tags]    test
    Open url
    Input-search    ${search}

TC02
    [Tags]    test2
    Open url
    Input-search    ${search}