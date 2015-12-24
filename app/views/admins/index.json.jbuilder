
json.array!(@desserts) do |dessert|
  json.extract! dessert, :id, :name, :views, :price, :disable, :views_per_day, :created_at, :pictures
  json.url dessert_url(dessert, format: :json)
end

