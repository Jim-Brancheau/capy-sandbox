# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium/webdriver'

After do |scenario|
  if scenario.failed?
    path = "html-report/#{scenario.__id__}.png"
    page.driver.browser.save_screenshot(path)
    # attach(path, 'image/png')
  end
end
