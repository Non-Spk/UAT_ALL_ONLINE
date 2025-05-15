*** Keywords ***
Sign In
    [Tags]    Sign In
    [Arguments]    ${username}    ${password}
    common.Type Into Textbox    ${all_online_signin_locator['txt_username']}    ${username}
    common.Type Into Textbox    ${all_online_signin_locator['txt_password']}    ${password}
    common.Tap Element    ${all_online_signin_locator['btn_signin']}