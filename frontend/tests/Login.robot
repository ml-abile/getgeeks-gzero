*Settings*
Documentation    Login test suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session

*Test Cases*
User Login
    [Tags]      smoke

    ${user}    Factory User     login

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Pass
    [Tags]      inv_pass

    ${user}    Create Dictionary    email=moira-abile@hotmail.com    password=abc123

    Go To Login Page
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be    Usuário e/ou senha inválidos.

User not found
    [Tags]  user_404

    ${user}    Create Dictionary    email=moira404@hotmail.com    password=abc123

    Go To Login Page
    Fill Credentials           ${user}
    Submit Credentials
    Modal Content Should Be    Usuário e/ou senha inválidos.

Incorrect Email

    ${user}    Create Dictionary    email=moira.hotmail.com    password=abc123

    Go To Login Page
    Fill Credentials           ${user}
    Submit Credentials
    Should Be Type Email

Required Email
    [Tags]      temp
    
    ${user}         Create Dictionary       email=${EMPTY}      password=abc123

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Alert Span Should Be    E-mail obrigatório

Required Pass
    [Tags]      temp

    ${user}         Create Dictionary       email=moira@hotmail.com      password=${EMPTY}

    Go To Login Page
    Fill Credentials    ${user}
    Submit Credentials
    Alert Span Should Be    Senha obrigatória

Required Fields
    [Tags]      temp

    @{expected_alerts}      Create List
    ...                     E-mail obrigatório
    ...                     Senha obrigatória

    Go To Login Page
    Submit Credentials
    Alert Spans Should Be    ${expected_alerts} 
