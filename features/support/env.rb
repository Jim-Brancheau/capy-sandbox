# frozen_string_literal: true

require 'capybara/cucumber'

Capybara.register_driver :selenium do |app|
  browser_options = ::Selenium::WebDriver::Firefox::Options.new
  browser_options.args << '--headless'
  Capybara::Selenium :Driver.new(app, browser: firefox, options: browser_options)
end
Capybara.run_server = false
# Set default driver to Selenium
Capybara.default_driver = :selenium
# Set default selector strategy to css
Capybara.default_selector = :css
