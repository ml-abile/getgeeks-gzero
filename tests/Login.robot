*Settings*
Documentation    Login test suite

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session

*Test Cases*
User Login

    ${user}    Factory User Login

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Pass
    [Tags]      i_pass

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
    Should Be Type Email
