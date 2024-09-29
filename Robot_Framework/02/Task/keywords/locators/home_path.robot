*** Variables ***
${home_locator.input_txt}    xpath=//input[@placeholder='input search text']
${home_locator.search_btn}    xpath=//div[@class='search-container']/span//button

${home_locator.search_txt_product_name}    xpath=//div[@class='ant-card-meta-title' and text()='{product}']
${home_locator.add_to_cart_btn}    xpath=//span[text()='Add to cart']
${home_locator.ok_box}    //div/span[text()='Product detail page']
${home_locator.ok_button}    //button/span[text()='OK']