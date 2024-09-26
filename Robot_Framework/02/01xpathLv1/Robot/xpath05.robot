*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
# not(@p) คือไม่มีแท็ก p
TC01-test xpath
    Open Browser    file:///C:/Users/chano/Desktop/Robot_Freamwork/02/01xpathLv1/htmlfile/ex06.html    browser=chrome
    Input Text    //div[@k='abc' and @p='xyz']/input   gggg
    Input Text    //div[@k='abc' and not(@p)]/input  1234567
    Input Text    //div[@p='xyz' and not(@k)]/input    Chanom
