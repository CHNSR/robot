*** Settings ***
Library    SeleniumLibrary
Resource    ../section01/keyword/keyword.robot

*** Variables ***
${search}    robot
${search2}    robot2
@{search03}    a    b    c    d    e
&{dict_value}    url_google=https://www.google.com/     url_youtube=https://www.youtube.com    search=jeff satur

*** Test Cases ***
TC01 - Open google and in put search
    Open url    ${dict_value['url_google']}
    Input-search    ${dict_value['search']}
    #Input-search    ${search03[0]}