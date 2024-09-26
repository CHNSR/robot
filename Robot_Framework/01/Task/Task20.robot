*** Test Cases ***
Test With Tag 2
    [Tags]    regression
    Log To Console    This is the regression test

Test With MultipleTags
    [Tags]    smoke    critical
    Log To Console    This is a smoke critical test
    #You must to have correct path to run your tag.
    #robot --include regression C:/Users/chano/Desktop/Robot_Freamwork/Task/Task20.robot
