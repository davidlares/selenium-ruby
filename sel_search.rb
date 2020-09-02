require 'selenium-webdriver'

# setting up driver
driver = Selenium::WebDriver.for :firefox

begin
  # navigate
  driver.navigate.to "http://google.com"
  # setting element, 'q' -> append string
  element = driver.find_element(:name, 'q')
  # type text
  element.send_keys "Metallica"
  element.submit
  sleep 5
ensure
  driver.quit
end
