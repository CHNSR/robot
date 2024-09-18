*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Test ep 05
    Open Browser    file:///C:/Users/chano/Desktop/Robot_Freamwork/ep01/ex06.html    browser=chrome
    Input Text    xpath=//div[@p='xyz' and @k='abc']/input    UsernameEx06