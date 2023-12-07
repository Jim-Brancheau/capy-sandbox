# frozen_string_literal: true

module ProductsPageSelectors
  PRODUCT_SORT_SELECT = "[data-test='product_sort_container']"
end

class ProductsPage < Page
  def products_header
    find('span', text: 'Products')
  end
end
