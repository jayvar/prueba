json.array!(@carros) do |carro|
  json.extract! carro, :id, :name, :description, :cochera_id
  json.url carro_url(carro, format: :json)
end
