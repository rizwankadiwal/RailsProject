class Product < ApplicationRecord
  validates :product_name, :sku, :price, :stock_quantity, presence: true
  validates :price, :sku, numericality: {greater_than: 0}
  validates :stock_quantity, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
