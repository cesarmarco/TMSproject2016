json.array!(@mezages) do |mezage|
  json.extract! mezage, :id, :name, :email, :company, :phone, :subject, :body
  json.url mezage_url(mezage, format: :json)
end
