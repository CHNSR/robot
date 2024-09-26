*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC01-test xpath
    Open Browser    file:///C:/Users/chano/Desktop/Robot_Freamwork/02/01xpathLv1/htmlfile/ex01.html    browser=chrome
    Input Text    //input[@v='user']    gggg
    Input Text    //input[@v='password']    1234567
