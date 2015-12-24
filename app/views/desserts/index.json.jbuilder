
json.array!(@desserts) do |dessert|
  json.extract! dessert, :id, :name, :price, :disable, :pictures
  json.url dessert_url(dessert, format: :json)
end

