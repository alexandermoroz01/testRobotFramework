*** Settings ***
Documentation    This is my first test case
Resource    ../Resourses/resourses.robot
Resource    ../Resourses/browserOptions.robot
Library     OperatingSystem
Library     SeleniumLibrary
Suite Setup    Set Headless Mode
*** Variables ***
${BROWSER_OPTIONS}
*** Keywords ***


*** Test Cases ***
 TEST1
    [Setup]     Open Browser    url=https://the-internet.herokuapp.com/login    browser=chrome      options=${BROWSER_OPTIONS}

    resourses.Login     tomsmith    SuperSecretPassword!
    Element Should Contain    id=flash    You logged into a secure area!
    ${test}     resourses.Get Flash Message Text
    log     ${test}
    should contain    ${test}    You logged into a secure area!

    resourses.Click Logout Button
    [Teardown]      Close Browser


#    Log My Specific Username And Password       ${dictionary}[username]     ${dictionary}[password]
#    log     My Username
#    Log My Password
#    Log Username And Password 2
#    Log My Specific Username    ${dictionary}[username]
#    log    ${MY-VARIABLE}
#    log    ${MY-VARIABLE2}
#
#    log    ${list}[2]
#    log    ${list}[0]
#    log    ${list}[1]
#
#    log    ${dictionary}[username]
#    log    ${dictionary}[password]

