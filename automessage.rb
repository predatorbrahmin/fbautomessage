require 'watir'
require 'webdriver-user-agent'
driver = Webdriver::UserAgent.driver(browser: :chrome, agent: :iphone, orientation: :portrait)
signIn={
 email: "", # The email you use to sign in to Facebook
 password: "" # The password you use to sign in to Facebook
 }
 
test_site="https://mbasic.facebook.com/"
ru_site="" #friends msg box url 
browser=Watir::Browser.new driver
browser.goto test_site
 
browser.text_field(:id, "m_login_email").set signIn[:email]
browser.text_field(:name, "pass").set signIn[:password]
browser.button(:type,"submit").click
 
browser.button(:value, "OK").click
browser.goto ru_site
browser.textarea(:name, "body").set("web automation script checking..") #can set any value in msg
browser.button(:name, "Send").click
browser.button(:value,"Log out").click
browser.close

