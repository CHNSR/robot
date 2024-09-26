*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#กรณีที่ input ไม่สามารถระบุแบบเจะจง ย้อนดูอะไรที่ระบุแบบยูนีค
TC01-test xpath
    Open Browser    file:///C:/Users/chano/Desktop/Robot_Freamwork/02/01xpathLv1/htmlfile/ex02.html    browser=chrome
    Input Text    //div[@v='username']/input    gggg
    Input Text    //div[@v='password']/input   1234567
