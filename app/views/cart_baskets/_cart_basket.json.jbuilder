json.extract! cart_basket, :id, :product_id, :created_at, :updated_at
json.url cart_basket_url(cart_basket, format: :json)
