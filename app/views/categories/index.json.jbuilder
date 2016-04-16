json.array!(@categories) do |category|
  json.extract! category, :id, :category_id, :categoryname, :description, :image_url
  json.url category_url(category, format: :json)
end
