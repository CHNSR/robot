*** Settings ***
Resource    ../keywords/page/import.robot
*** Test Cases ***
Test Register 
    common.Open website
    common.Click user icon
    login_page.Click Sign up button
    register_page.Input email    ${users.user01.username}
    register_page.Input password   ${users.user01.password}
    register_page.Input Confirm Password    ${users.user01.password}
    register_page.Submit
    common.Click user icon
    user_profile_page.Log out
Test Log in
    common.Open Website
    common.Click user icon
    login_feature.Login    ${users.user01.username}    ${users.user01.password}
    home_page.Search product in search bar    ${searchtxt.searchtxt_1}
    home_feature.Click product and add product to cart    ${product.product_1}
    common.Open Cart
    cart_feature.Fill in Delivery info and Start Payment Process    ${users.user01.name}    ${users.user01.surname}    
    ...    ${users.user01.address}    ${users.user01.phoneNum}    ${users.user01.email} 
    payment_page.Select Payment Method 
    payment_feature.Fill in Credit Card Details and Confirm Payment    ${cradit_card.cardNum}    ${cradit_card.date}    
    ...    ${cradit_card.cvc}    ${cradit_card.nameOnCard}    
    common.Click User ICON
    #รัน uat sit robot  -d result -v type:uat tc01.robot