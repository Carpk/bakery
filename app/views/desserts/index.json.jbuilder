
json.array!(@desserts) do |dessert|
  json.extract! dessert, :id, :name, :price, :disable, :main_pic
  json.url dessert_url(dessert, format: :json)
end

