*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${message}    My Message

*** Keywords ***
Say Hello
    Log To Console    ThisIsSayHello

*** Test case ***
Open chrome
    Open Browser    file:///C:/Users/chano/Desktop/Robot_Freamwork/ep01/ex04.html    browser=chrome
    Input Text     xpath=//div[span[@c="Username"]]/input    Ex04InputThisUsername