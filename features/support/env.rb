# frozen_string_literal: true

require 'capybara/cucumber'

Capybara.run_server = false
# Set default driver to Selenium
Capybara.default_driver = :selenium
# Set default selector strategy to css
Capybara.default_selector = :css

# TODO: Need to tear down state between test runs as it stays logged in between tests
