# Selenium Ruby

The following repository contains 5 basic examples on how to implement `Selenium WebDriver` gem for in-browser automated tests, pretty good for test expected behavior on web development

There's nothing much to add for to. These examples use the `Mozilla's geckodriver`, a proxy which provides an HTTP API for interaction based on the `WebDriver protocol`, you can find more [here](https://firefox-source-docs.mozilla.org/testing/geckodriver/)

## Usage

`ruby sel_locate.py` (Opens up Google, perform a search and checks for a specific link in the results)

`ruby sel_screenshot.py` (Takes a screenshot of the web screen)

`ruby sel_search.py` (Search in google using a provided keyword)

`ruby sel_selectors.py` (CSS selectors basic example)

`ruby sel_verify.py` (Regex search inside a web page)


Once the program is running, a Firefox browser window will be displayed, and then will execute whatever logic is placed in the script's content.

## Set up

Just need to install the Selenium gem like this.

`gem install selenium-webdriver`

## Credits

 - [David E Lares](https://twitter.com/davidlares3)

## License

 - [MIT](https://opensource.org/licenses/MIT)
