*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Handling Dropdowns and Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Select From List By Label    continents     Africa
    Sleep    1
    Select From List By Index    continents     5
    Sleep    1

    Select From List By Label    selenium_commands      Switch Commands
    Select From List By Label    selenium_commands      WebElement Commands
    Sleep    3

    Unselect From List By Label    selenium_commands      WebElement Commands
    Sleep    2