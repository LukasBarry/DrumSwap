json.array!(@drums) do |drum|
  json.extract! drum, :id, :name, :description, :price, :swap
  json.url drum_url(drum, format: :json)
end
