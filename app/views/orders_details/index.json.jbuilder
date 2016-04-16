json.array!(@orders_details) do |orders_detail|
  json.extract! orders_detail, :id, :order_id, :product_id, :quantity
  json.url orders_detail_url(orders_detail, format: :json)
end
