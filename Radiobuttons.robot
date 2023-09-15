*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1

    Select Radio Button    sex  Female
    #Unselect Checkbox    sex
    Select Radio Button    exp  4
    #Sleep    5
    Select Checkbox    Manual Tester
    #Sleep    4
    Unselect Checkbox    Manual Tester
    Close Browser
