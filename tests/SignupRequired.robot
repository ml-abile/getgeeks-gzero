*Settings*
Documentation    Signup Required Test Suite

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup       Signup Without Fill Form
Test Teardown    Finish Session

*Test Cases*

Name is required
    Alert Span Should Be    Cadê o seu nome?

Lastaname is required
    Alert Span Should Be    Cadê o sobrenome?

Email is required
    Alert Span Should Be    O email é importante também!

Password is required
    Alert Span Should Be    Agora só falta a senha!

*Keywords*
Signup Without Fill Form
    Start Session
    Go To Signup Form
    Submit Signup Form