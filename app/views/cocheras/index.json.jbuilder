json.array!(@cocheras) do |cochera|
  json.extract! cochera, :id, :name, :description
  json.url cochera_url(cochera, format: :json)
end
