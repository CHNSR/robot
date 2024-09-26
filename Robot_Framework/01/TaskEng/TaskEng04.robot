*** Keywords ***
Process Data Pipeline
    [Arguments]    ${execute_in_parallel}    &{pipeline_config}
    Log To Console    Stages: ${pipeline_config['stages']}
    Log To Console    Input Format: ${pipeline_config['input_format']}
    Log To Console    Output Format: ${pipeline_config['output_format']}
    Log To Console    Execute in Parallel: ${execute_in_parallel}

*** Test Cases ***
Test01
    &{pipeline_config}=     Create Dictionary    stages=["Extract Data", "Transform Data"]    input_format=csv    output_format=json
    ${execute_in_parallel}=    Set Variable    False
    Process Data Pipeline    ${execute_in_parallel}    &{pipeline_config}
