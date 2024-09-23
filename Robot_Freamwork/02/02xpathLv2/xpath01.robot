*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
# xpath=//[@id='rt-feature']//parent::div การถอยกลับมายัง พ่อ แม่

# //h5[text()=' ดราก้อนบอล ซุปเปอร์ เล่ม 19']/ancestor::div[@class="nev-card-detail mt-2 discounted"] การถอยกลับมายัง ปู่ ย่า

# ตามหาน้อง //a[h5[text()=' ดราก้อนบอล ซุปเปอร์ เล่ม 19']]//following-sibling::div 
# ตามหาน้องแบบระบุตัวตน //a[h5[text()=' ดราก้อนบอล ซุปเปอร์ เล่ม 19']]//following-sibling::div[@class='nev-price']
#เอาไว้ระบุเส้นทางให้ชัดเจน เช่นต้องการดูราคาของสินค้าชื่อนี้ๆๆนะ 

#ย้อนกลับไปหาพี่เพื่อขอดูลูกของพี่ //div[@class='nev-price']/preceding-sibling::a/h5[text()=' ดราก้อนบอล ซุปเปอร์ เล่ม 19'] จังหวะแรกเราระบุไปที่น้องก่อนละทีนี้เราต้องการยืนยันว่าเป็นของพี่ที่ชื่อ ดราก้อนบอล จริงๆ นะเราก็เลยมีท่านี้
TC01-test xpath
    Open Browser    https://www.nejavu.com/    gc
    Click Element    xpath=//a[@class='close-modal']
    Click Element    xpath=//a[text()="ยอมรับ"]
    Input Text    id=search-dropdown    ดราก้อนบอล ซุปเปอร์ เล่ม 19
    Click Element    class=btn-search
    Wait Until Element Is Visible    xpath=//span[text()="ผลการค้นหา"]
    ${subtitle}    Get Text    //h5[text()=' ดราก้อนบอล ซุปเปอร์ เล่ม 19']//parent::a//following-sibling::a/p[@class='detail-subtitle']
    Log To Console    ${subtitle}
    Should Be Equal    ${subtitle}    อาคิระ โทริยามา
    