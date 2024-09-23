*** Settings ***
#Library    YamlLibrary
Variables    variable.yaml

*** Test Cases ***
Test Print User Info
    Log To Console    Name: ${user.name}
    Log To Console    Age: ${user.age}
    Log To Console    City: ${user.city}