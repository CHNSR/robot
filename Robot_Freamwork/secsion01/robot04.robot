*** Settings ***
Library    SeleniumLibrary
Resource    ./keyword/keyword.robot
*** Test Cases ***
TC01 - Open browser
    Open url
    ${value_search}    Return text search    robot
    Log To Console    ${value_search}

Tc02 - Open and input text with Arrgument
    Open url
    Input-search    value=seccess to in put text with argument