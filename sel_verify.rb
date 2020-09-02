require 'rubygems'
require 'selenium-webdriver'
# setting up driver
driver = Selenium::WebDriver.for :firefox
wait = Selenium::WebDriver::Wait.new(:timeout => 5)

begin
  driver.get "https://es.wikipedia.org/wiki/Ruby"
  # waiting for page (load tiem up to 20 secs)
  result = wait.until {/lenguaje de programación interpretado/.match(driver.page_source)}
  if result != nil then
    puts "Test passed"
  else
    puts "Test did not passed"
  end
ensure
  driver.quit
end
