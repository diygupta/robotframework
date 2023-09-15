*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demoqa.com/upload-download
${upload_button}    //input[@id="uploadFile"]
${verify_upload_file}   //p[@id="uploadedFilePath"]
${file_to_upload}   capgemini.jpg

*** Test Cases ***
Upload File
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Choose File    ${upload_button}    ${CURDIR}${/}${file_to_upload}
    Wait Until Element Is Visible    ${verify_upload_file}\[normalize-space()="C:\\fakepath\\${file_to_upload}"]
    Sleep    3