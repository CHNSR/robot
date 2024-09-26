*** Settings ***
Documentation    Example of parallel test execution using Pabot and --processes
Library           SeleniumLibrary

*** Test Cases ***
Test Case 1
    [Tags]    smoke
    Log To Console    Running Test Case 1

Test Case 2
    [Tags]    regression
    Log To Console    Running Test Case 2

Test Case 3
    [Tags]    critical
    Log To Console    Running Test Case 3

Test Case 4
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 5
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 6
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 7
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 8
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 9
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 10
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 11
    [Tags]    smoke
    Log To Console    Running Test Case 4

Test Case 12
    [Tags]    smoke
    Log To Console    Running Test Case 4

#pabot --processes 4 C:/Users/chano/Desktop/Robot_Freamwork/Task/Task25.robot
#--processes 4: หมายความว่าการทดสอบจะถูกรันแบบขนานโดยใช้ 4 processes หรือ threads พร้อมกัน
#--processes 6:จะดีสำหรับเครื่องนี้สุดเพราะ cpu มี 6 core 