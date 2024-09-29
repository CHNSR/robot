*** Settings ***
Resource    ../keywords/page/import.robot


*** Test Cases ***
Test Register 
    Evaluate    createUniqueID.add_new_user_to_yaml()
    ${Userdata}=    Evaluate    createUniqueID.get_latest_user_from_yaml()    # Get the latest user from YAML
    common.Open website
    register_feature.Register    ${Userdata['username']}    ${Userdata['password']}    ${Userdata['confirmpassword']} 
    user_profile_page.Log out

Test Log in
    &{lastuser}    Evaluate    createUniqueID.get_latest_user_from_yaml()          
    common.Open Website
    login_feature.Login    ${lastuser['username']}    ${lastuser['password']}
    home_feature.Search and add product to cart    ${searchtxt.searchtxt_1}    ${product.product_1}
    cart_feature.Purchase product
    ...    ${lastuser['name']}    
    ...    ${lastuser['surname']}    
    ...    ${lastuser['address']}    
    ...    ${lastuser['phoneNum']}    
    ...    ${lastuser['email']}  
    payment_feature.Add credit card and payment 
    ...    ${cradit_card.cardNum}    
    ...    ${cradit_card.date}    
    ...    ${cradit_card.cvc}    
    ...    ${cradit_card.nameOnCard}    
    home_feature.Show order id in console
    #uat sit |robot  -d result -v type:uat tc01.robot