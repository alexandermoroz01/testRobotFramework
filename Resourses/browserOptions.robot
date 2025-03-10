*** Keywords ***
Set Headless Mode
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Set Suite Variable    ${BROWSER_OPTIONS}    ${options}