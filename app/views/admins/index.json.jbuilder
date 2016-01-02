
json.array!(@desserts) do |dessert|
  json.extract! dessert, :id, :name, :views, :price, :disable, :views_per_day, :main_pic, :created_at
  json.url dessert_url(dessert, format: :json)
end

