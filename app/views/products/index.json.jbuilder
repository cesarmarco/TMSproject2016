json.array!(@products) do |product|
  json.extract! product, :id, :product_id, :productname, :category_id
  json.url product_url(product, format: :json)
end
