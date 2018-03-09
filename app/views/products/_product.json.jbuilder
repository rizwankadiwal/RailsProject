json.extract! product, :id, :product_name, :sku, :description, :price, :stock_quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
