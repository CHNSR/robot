*** Variables ***
@{list}    robot    freamwork    python    java    dart

*** Keywords ***
loop in 
    FOR  ${value}  IN  @{list}
        Log To Console    ${value}
        Exit For Loop If    "${value}"=="python"
    END 

loop in range
    FOR  ${value}  IN RANGE  10
        Log To Console    ${value}
    END

*** Test Cases ***
test01
    loop in
teat02
    loop in range