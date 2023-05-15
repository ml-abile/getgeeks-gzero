*** Settings ***
Documentation    BeGeek test suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session

*** Test Case ***

Be a Geek
    [Tags]      smoke
    
    ${user}     Factory User    be_geek
    Do Login    ${user}

    Go To Geek Form
    Fill Geek Form                ${user}[geek_profile]
    Submit Geek Form
    Geek Form Should Be Sucess




