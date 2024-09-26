*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#หา div แล้วลูก div มี span ที่สามารถเป็นตัวบ่งชี้ไปยัง input ได้
TC01-test xpath
    Open Browser    file:///C:/Users/chano/Desktop/Robot_Freamwork/02/01xpathLv1/htmlfile/ex04.html    browser=chrome
    Input Text    //div[span[@c='Username']]/input   gggg
    Input Text    //div[span[@c='Password']]/input   1234567
