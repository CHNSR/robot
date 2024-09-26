*** Keywords ***
Print User Info
    [Arguments]    &{user_info}
    Log To Console    Name: ${user_info["name"]}
    Log To Console    Age: ${user_info["age"]}
    Log To Console    City: ${user_info["city"]}

*** Test Cases ***
Test01
    Print User Info    name=chanon    age=22    city=pitsanulok   