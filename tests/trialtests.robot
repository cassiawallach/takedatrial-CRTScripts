*** Settings ***
Library              QWeb
Library              QForce
Resource             ../resources/common.robot
Suite Setup          Setup Browser
Suite Teardown       End suite
Default Tags         dev1

*** Test Cases ***
Bicycle Object Test
    Home
    LaunchApp        Bicycles
    ClickText        New
    ComboBox         Search Accounts...          copado_test account
    ClickCheckbox    Test Record                 on
    PickList         Type                        Road
    ClickText        Save                        partial_match=False
    VerifyText       Road
    VerifyText       copado_test account
    ClickText        Delete
    UseModal         On
    ClickText        Delete
    UseModal         Off