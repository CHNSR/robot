*** Test Cases ***
Test01
    [Tags]    one
    Log To Console    This is the tag one

Test02
    [Tags]    two    three
    Log To Console    This is the tag two and three

Test03
    [Tags]    four   
    Log To Console    This is the tag four

#In this test,I will show you, How to call all tag except tag[one]
#robot --exclude one C:/Users/chano/Desktop/Robot_Freamwork/Task/Task22.robot

