*** Keywords ***
Create User Info
    ${user_info}     Create Dictionary     name=John     age=30     city=Bangkok
    Return From Keyword     ${user_info}
*** Test Cases ***
Test01
    ${user}     Create User Info
    Log To Console    Name: ${user.name}