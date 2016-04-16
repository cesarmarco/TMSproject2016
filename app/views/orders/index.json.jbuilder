json.array!(@orders) do |order|
  json.extract! order, :id, :order_id, :customer_id, :order_date
  json.url order_url(order, format: :json)
end
