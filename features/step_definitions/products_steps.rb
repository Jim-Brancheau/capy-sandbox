# frozen_string_literal: true

require_relative '../../pages/products_page'

When('I choose to sort by {string}') do |sort_option|
  ProductsPage.new.sort_option(sort_option)
end

Then('the items are listed in descending alphbetical order') do
  product_descriptions = [
    'Test.allTheThings() T-Shirt (Red)',
    'Sauce Labs Onesie',
    'Sauce Labs Fleece Jacket',
    'Sauce Labs Bolt T-Shirt',
    'Sauce Labs Bike Light',
    'Sauce Labs Backpack'
  ]

  expect(ProductsPage.new.all_product_descriptions_on_page.collect(&:text)).to eq(product_descriptions)
end
