*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Example Test With Setup And Teardown
    [Setup]    Open Browser     http://google.com    browser=chrome
    [Teardown]    Close Browser
    Log To Console    Test is running