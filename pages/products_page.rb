# frozen_string_literal: true

module ProductsPageSelectors
  PRODUCT_SORT_SELECT = "[data-test='product_sort_container']"
  INVENTORY_ITEMS = "[data-test^='add-to-cart-']"
  INVENTORY_ITEMS_NAMES = "//*[@data-test^='add-to-cart-']"
end

class ProductsPage < Page
  include ProductsPageSelectors
  def products_header
    find('span', text: 'Products')
  end

  def sort_option(sort_option)
    find(PRODUCT_SORT_SELECT).select(sort_option)
  end

  def all_product_descriptions_on_page
    elements = []
    all(INVENTORY_ITEMS).each do |element|
      elements << element
                  .find(:xpath, './ancestor::div[contains(@class,"inventory_item_description")]')
                  .find('.inventory_item_name')
    end
    elements
  end
end
