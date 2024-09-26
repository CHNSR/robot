*** Variables ***
${login_locator.email_container}    xpath=//span[@aria-label='user']/ancestor::span/following-sibling::input
${login_locator.password_container}    xpath=//input[@type='password']
${login_locator.log_in_btn}    xpath=//button[@type='submit']
${login_locator.ok_btn}    xpath=//button[span[text()='OK']]
${login_locator.sign_up_btn}    xpath=//button[span[text()='Sign up']]