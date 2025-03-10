*** Settings ***
Library     OperatingSystem
Library    SeleniumLibrary
*** Variables ***
${MY-VARIABLE}    my test variable
${MY-VARIABLE2}    my second variable

${GOOGLE-SEARCH-FIELD}      //locator

@{list}     test1   test2   test3   test4

&{dictionary}   username=testuser   password=pass
&{dictionary2}   username=testuser2   password=pass2



${USERNAME_INPUT}   xpath=//input[@id="username"]
${PASSWORD_INPUT}   xpath=//input[@id="password"]
${LOGIN_BTN}    xpath=//button[@type="submit"]
${LOGOUT_BTN}   xpath=//a[@href="/logout"]
${FLASH_MESSAGE}    xpath=//div[@id="flash"]



*** Keywords ***

Enter Username
    [Arguments]     ${USERNAME}
    input text    ${USERNAME_INPUT}     ${USERNAME}

Enter Password
    [Arguments]    ${PASSWORD}
    input text      ${PASSWORD_INPUT}   ${PASSWORD}

Click Login Button
    click element    ${LOGIN_BTN}

Click Logout Button
    click element       ${LOGOUT_BTN}

Get Flash Message Text
    ${text}     get text    ${FLASH_MESSAGE}
    RETURN    ${text}

Login
    [Arguments]     ${USERNAME}     ${PASSWORD}
    Enter Username    ${USERNAME}
    Enter Password    ${PASSWORD}
    Click Login Button