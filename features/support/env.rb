# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium/webdriver'

driver = ENV['DRIVER'] || 'selenium'

Capybara.register_driver :headless_firefox do |app|
  options = Selenium::WebDriver::Firefox::Options.new
  options.headless!
  Capybara::Selenium::Driver.new(app, browser: :firefox, options:)
end

Capybara.run_server = false
# Set default driver to Selenium
Capybara.default_driver = driver.to_sym
# Set default selector strategy to css
Capybara.default_selector = :css
