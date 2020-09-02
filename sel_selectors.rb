require 'selenium-webdriver'
# setting up driver
driver = Selenium::WebDriver.for :firefox

begin
  # navigate
  driver.navigate.to "https://www.wikipedia.org"
  # find element
  slogan = driver.find_element(:css, 'strong.localized-slogan').text
  puts slogan
ensure
  driver.quit
end
