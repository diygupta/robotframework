*** Settings ***
Library     Telnet

*** Variables ***
${browser}=    chrome
${HOSTNAME}=        k8s-master.mydomain.com
${REMOTE_COMMAND}=   kubectl get pod -A

*** Test Cases ***
Verify Kubernetes
    Open Connection     ${HOSTNAME}     ${browser}
    ${result}=    Execute Command       ${REMOTE_COMMAND}
    Should Contain    ${result}    nava
    Close All Connections