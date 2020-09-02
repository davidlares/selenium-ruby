require 'selenium-webdriver'
# setting up driver
driver = Selenium::WebDriver.for :firefox
begin
  # navigate
  driver.navigate.to "http://google.com"
  # screenshot
  driver.save_screenshot('screenshot.png')
ensure
  driver.quit
end
