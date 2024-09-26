*** Settings ***
Library    SeleniumLibrary

Variables    ../../resources/testdata/testdata.yaml
Variables    ../../resources/setting/setting.yaml

Resource    ../features/login_feature.robot
Resource    ../features/home_feature.robot
Resource    ../features/cart_feature.robot
Resource    ../features/payment_feature.robot

#Resource page
Resource    common.robot
Resource    home_page.robot
Resource    user_profile_page.robot
Resource    login_page.robot
Resource    register_page.robot
Resource    payment_page.robot
Resource    cart_page.robot

#Resource locator
Resource    ../locators/home_path.robot
Resource    ../locators/cart_path.robot
Resource    ../locators/commond.robot
Resource    ../locators/login_path.robot
Resource    ../locators/pay_path.robot
Resource    ../locators/register_path.robot
Resource    ../locators/user_profile_path.robot