require 'selenium-webdriver'
# setting up driver
driver = Selenium::WebDriver.for :firefox

begin
  # navigate
  driver.navigate.to 'http://google.com'
  # check for title
  if driver.title == 'Google'
    puts 'Test 1: Pass: Title Found'
  else
    puts 'Test 1: Failed'
  end
  # search routine - writing 'Selenium'
  q = driver.find_element(:name, 'q')
  q.send_keys 'Selenium'
  q.submit
  # sleep
  sleep 5
  # check if google's search page contains title
  if driver.title == 'Selenium - Buscar con Google'
    puts 'Test 2: Pass: Title found'
  else
    puts 'Test 2: Fail'
  end
  # check if search includes a website
  q = driver.page_source
  if q.include?('www.selenium.dev')
    puts 'Test 3: Pass: Official website found'
  else
    puts 'Test 3: Failed'
  end
ensure
  driver.quit
end
