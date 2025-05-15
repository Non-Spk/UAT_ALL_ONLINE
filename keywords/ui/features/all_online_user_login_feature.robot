*** Keywords ***
User login
    [Tags]    Open App
    [Arguments]    ${username}    ${password}
    common.Open Application
    all_online_signin_message_page.Click Sign In Corporate btn
    all_online_signin_page.Sign In    ${username}    ${password}