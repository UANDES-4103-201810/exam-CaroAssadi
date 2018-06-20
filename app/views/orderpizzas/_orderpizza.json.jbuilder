json.extract! orderpizza, :id, :payment, :pizza_id, :order_id, :created_at, :updated_at
json.url orderpizza_url(orderpizza, format: :json)
