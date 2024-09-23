*** Settings ***
Documentation    Example of parallel test execution using Pabot
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


#pabot --splitTestLevel 2 C:/Users/chano/Desktop/Robot_Freamwork/Task/Task24.robot
