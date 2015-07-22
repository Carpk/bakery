
json.array!(@desserts) do |dessert|
  json.extract! dessert, :id, :name, :price, :pictures
  json.url dessert_url(dessert, format: :json)
end

