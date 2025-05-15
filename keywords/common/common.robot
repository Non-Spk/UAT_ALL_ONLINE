*** Keywords ***
Open Application
    [Tags]    Open App
    AppiumLibrary.Open application    remote_url=${device['remote_url']}
    ...     platformName=${device['platform_name']}
    ...     platformVersion=${device['platform_version']}
    ...     deviceName=${device['device_name']}
    ...     appPackage=${app_path['package']}
    ...     appActivity=${app_path['activity']}


Close Application
    [Tags]    Close App
    AppiumLibrary.Close application


Tap Element
    [Documentation]    tap center of element by locator
    [Arguments]    ${element_locator}
    AppiumLibrary.Wait Until Page Contains Element    ${element_locator}    30s
    ${position}=    AppiumLibrary.Get Element Location    ${element_locator}
    ${size}=        AppiumLibrary.Get Element Size        ${element_locator}
    ${center_x}=    Evaluate    float($position.get('x', 0)) + float($size.get('width', 0)) / 2
    ${center_y}=    Evaluate    float($position.get('y', 0)) + float($size.get('height', 0)) / 2
    @{tap_coordinates}=    Create List    ${center_x}    ${center_y}
    @{positions}=          Create List    ${tap_coordinates}
    AppiumLibrary.Tap With Positions    500    @{positions}


Type Into Textbox
    [Arguments]    ${locator}    ${text}
    ${is_text_valid}=    Evaluate    $text is not None and $text != "None" and $text != ""
    Run Keyword If    ${is_text_valid}    AppiumLibrary.Wait Until Page Contains Element    ${locator}    60s
    Run Keyword If    ${is_text_valid}    AppiumLibrary.Input Text    ${locator}    ${text}


Verify Element Text
    [Arguments]    ${locator}    ${text}
    AppiumLibrary.Wait Until Page Contains Element    ${locator}    60s
    ${result}=    AppiumLibrary.Get Text    ${locator}
    Should Be Equal As Strings    ${result}    ${text}