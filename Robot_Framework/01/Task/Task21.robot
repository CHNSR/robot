*** Test Cases ***
Test With Tag 2
    [Tags]    regression
    Log To Console    This is the regression test

Test With MultipleTags
    #This is a MultippleTags in this case have two tag. first tag is smoke and seccond tag is critical
    [Tags]    smoke    critical
    Log To Console    This is a smoke critical test

    #You can use smoke or critical for call Test With MultipleTags in terminal.
    #robot --include smoke C:/Users/chano/Desktop/Robot_Freamwork/Task/Task21.robot
    #robot --include critical C:/Users/chano/Desktop/Robot_Freamwork/Task/Task21.robot
