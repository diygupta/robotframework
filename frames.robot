*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}      https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Handling Frames
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium.bidi
    Unselect Frame
    Sleep    5
    
    Select Frame    packageFrame
    Click Link    Connection
    Unselect Frame
    Sleep    5
    
    Select Frame    classFrame
    Click Link    Help
    Unselect Frame
    Sleep    5

    Close Browser
    