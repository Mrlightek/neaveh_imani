json.extract! product_page, :id, :name, :description, :price, :created_at, :updated_at
json.url product_page_url(product_page, format: :json)
