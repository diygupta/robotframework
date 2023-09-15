*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}=     chrome
${url}=     https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling alerts
    Open Browser    ${url}  ${browser}
    Click Element    xpath://*[@id="HTML9"]/div[1]/button[1]
    Sleep    3
    Handle Alert    accept
    # Alert Should Be Present     I am an alert box!
    #Alert Should Not Be Present     I am an alert box!