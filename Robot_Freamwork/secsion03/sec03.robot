*** Settings ***
Library    SeleniumLibrary
Resource    ../secsion01/keyword/keyword.robot

Suite Setup    Open url    
Suite Teardown    Close Browser

*** Variables ***
${search}    robot   #variable search

*** Test Cases ***
TC01 - Open google and in put search
    Input-search    ${search}
    Sleep    5s
TC02 - Open google and in put search
    Input-search    ${search}
    Sleep    5s