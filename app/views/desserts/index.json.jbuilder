
json.array!(@desserts) do |dessert|
  json.extract! dessert, :id, :name, :pictures
  json.url dessert_url(dessert, format: :json)
end

