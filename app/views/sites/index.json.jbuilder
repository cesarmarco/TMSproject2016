json.array!(@sites) do |site|
  json.extract! site, :id, :name, :title, :body
  json.url site_url(site, format: :json)
end
