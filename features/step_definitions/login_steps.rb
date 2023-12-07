# frozen_string_literal: true

require_relative '../../pages/login_page'
require_relative '../../pages/products_page'

Given('I have visited www.saucedemo.com') do
  visit 'https://www.saucedemo.com'
end

When('I enter credentials for {word}') do |user_name|
  login_page = LoginPage.new
  login_page.enter_username(user_name)
  login_page.enter_password(ENV['SAUCE_DEMO_PASSWORD'])
end

When('I click Login') do
  login_page = LoginPage.new
  login_page.click_login
end

Then('I successfully login to www.saucedemo.com') do
  products_page = ProductsPage.new
  expect(page.current_url).to eq('https://www.saucedemo.com/inventory.html')
  expect(products_page.products_header).to be_truthy
end

Then('I receive error stating {string}') do |error_message|
  login_page = LoginPage.new
  expect(page.current_url).to eq('https://www.saucedemo.com/')
  expect(login_page.error_text).to eq(error_message)
end
