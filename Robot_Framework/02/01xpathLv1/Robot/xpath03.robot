*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#กรณีที่ input เปลี่ยน id ที่ระบุทุกครั้ง แต่ยังมีคำที่พออ้างอิงได้และไม่เปลียน
#เทคนิคการใช้ contain อ้างอิงถึงคำที่ไม่เปลี่ยนแปลง
TC01-test xpath
    Open Browser    file:///C:/Users/chano/Desktop/Robot_Freamwork/02/01xpathLv1/htmlfile/ex03.html    browser=chrome
    Input Text    //div[contains(@v,'username')]/input    gggg
    Input Text    //div[contains(@v,'password')]/input   1234567
