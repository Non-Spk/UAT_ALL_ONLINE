*** Keywords ***
Storecode Login
    [Tags]    Open App
    [Arguments]    ${StoreCode}    ${error_message}
    all_online_user_login_feature.User login
    ...     ${account_information['account_05']['username']}
    ...     ${account_information['account_05']['password']}
    all_online_type_storecode_page.Type Store Code    ${StoreCode}
    ${is_error_message}=    Evaluate    $error_message is not None and $error_message != "None" and $error_message != ""
    Run Keyword If    ${is_error_message}   all_online_error_storecode_page.Verify Error Message    ${error_message}
    Run Keyword If    not ${is_error_message}
    ...     AppiumLibrary.Wait Until Page Contains Element    ${all_online_homepage_locator['cnt_homepage']}    60s
    common.Close Application