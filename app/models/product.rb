class Product < ApplicationRecord
  belongs_to :category
  validates :product_name, :sku, :price, :stock_quantity, presence: true
  validates :price, :sku, numericality: {greater_than: 0}
  validates :stock_quantity, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  has_attached_file :product_image, styles: {large:"400x400>", medium: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\z/
end
