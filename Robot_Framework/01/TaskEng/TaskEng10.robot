*** Keywords ***
Generate Compliance Report
    [Arguments]    ${include_summary}    &{report_config}
    Log To Console    Incluse summary ${include_summary}
    Log To Console    data_sources ${report_config['data_sources']}
    #for another log......
    
*** Test Cases ***
Test01
    ${include_summary}=    Set Variable    True
    @{overview}=    Create List    77.9ms    60.0ms
    &{report_config}=     Create Dictionary
        ...    data_sources={data_sources1:Firebase, data_sources2:AWS}
        ...    report_sections={overview: @{overview}, detailed_findings:goood}
        ...    output_format={data_sources1:pdf, data_sources2:docx}
    Generate Compliance Report    ${include_summary}    &{report_config}