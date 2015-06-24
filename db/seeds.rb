# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def ingred_list
  list = []
  rand(8..15).times do
    list << Faker::Lorem.word
  end
  list.join(" ")
end

Admin.create(username: "admin",
             password: "password")

desserts = []

desserts << Dessert.create(name: "Chocolate Cake",
                           category: "cakes",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Cake, with chocolate")
Picture.create(dessert_id: desserts.last.id,
                name: "chocolate cake",
                picture_url: "http://cimages.proflowers.com/is/image/ProvideCommerce/GFB_13_SCA6AMERBTY_PR1000_W1_SQ")
Picture.create(dessert_id: desserts.last.id,
                name: "cake slice",
                picture_url: "http://purplefoodie.com/chocolate-chocolate-cake.jpg")


desserts << Dessert.create(name: "Carrot Cake",
                           category: "cakes",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Carrot cake is a sweet and moist spice cake, full of cut carrots and toasted nuts, and covered in cream cheese icing.")
Picture.create(dessert_id: desserts.last.id,
               name: "carrot cake slice",
               picture_url: "http://rossumiati.com/wp-content/uploads/2014/06/Carrot-Cake.jpg")
Picture.create(dessert_id: desserts.last.id,
               name: "carrot cake",
               picture_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQmDtoDl5hcPh_r3QsDz1KK8uMFcV8UQSPAk15D0TrwBZbS86sX")

desserts << Dessert.create(name: "Apple Pie",
                           category: "pies",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: " this crispy/ flakey crust and in the crust is moist, kinda mushy apples that usually have cinamin on them and it tastes SOOOOO good. ")
Picture.create(dessert_id: desserts.last.id,
               name: "apple pie",
               picture_url: "http://schema.openspring.net/sites/default/files/apple-pie-ck-709820-l_0.jpg")
Picture.create(dessert_id: desserts.last.id,
               name: "apple pie",
               picture_url: "http://s3.amazonaws.com/gmi-digital-library/3cf7cb34-8f77-4885-bfec-697f96dd5d61.jpg")


desserts << Dessert.create(name: "Banana Muffins",
                           category: "muffins",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Perfect for a grab-and-go breakfast, these tiny yet powerful energy boosters will add ease to the hectic morning.")
Picture.create(dessert_id: desserts.last.id,
               name: "banana muffins",
               picture_url: "http://pinchmysalt.files.wordpress.com/2007/05/best-banana-muffin.jpg")


desserts << Dessert.create(name: "Angel Food Cake",
                           category: "cake",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Angel Food cake, is a type of sponge cake originating in the United States that first became popular in the late 19th century.")
Picture.create(dessert_id: desserts.last.id,
               name: "angel food cake",
               picture_url: "http://images.media-allrecipes.com/userphotos/250x250/00/45/71/457170.jpg")


desserts << Dessert.create(name: "Tres Leches",
                          category: "cake",
                          ingredients: ingred_list,
                          price: rand(7..18),
                          description: "soaked in three kinds of milk: evaporated milk, condensed milk, and heavy cream.")
Picture.create(dessert_id: desserts.last.id,
               name: "tres leches",
               picture_url: "http://4.bp.blogspot.com/-po_na-FapPQ/UsYlZpy8iXI/AAAAAAAAExo/SE0drf1M5SA/s1600/Tres+Leches+by+Yesterfood+3.jpg")


desserts << Dessert.create(name: "Eclair Cake",
                          category: "cake",
                          ingredients: ingred_list,
                          price: rand(7..18),
                          description: "Graham crackers and a pudding mixture. It tastes just like an eclair, but there is enough for a crowd!")
Picture.create(dessert_id: desserts.last.id,
               name: "eclair cake",
               picture_url: "http://d3cizcpymoenau.cloudfront.net/images/legacy/31645/SFS_ChocolateEclairCakeV2-23_294238.jpg")


desserts << Dessert.create(name: "Irish Cream Bundt Cake",
                           category: "cake",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "This is a very moist, dense cake. It has a wonderful flavor. One of the most requested cakes in our household.")
Picture.create(dessert_id: desserts.last.id,
               name: "bundt cake",
               picture_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRuLkjmyJlNmrcMJX8HSSQ6WlqL8qL-v2mP4A_wukASRyx_u51R")


desserts << Dessert.create(name: "Pumkin Pie",
                           category: "pie",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Vermont Maple-Pumpkin Pie")
Picture.create(dessert_id: desserts.last.id,
               name: "pumkin pie",
               picture_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzbCpmirCU3dFsSJTVu-7LnJ5kqx8xCiQThysj6l72HUp7WcHybQ")


desserts << Dessert.create(name: "Coconut Cream Pie",
                           category: "pie",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Sweetened toasted coconut is stirred into a homemade custard filling and poured into a pie shell.")
Picture.create(dessert_id: desserts.last.id,
               name: "coconut pie",
               picture_url: "http://e32c1605c5af814e10b9-a3a5ec67c07c600320a5b6886fdcf7cd.r65.cf2.rackcdn.com/wp-content/uploads/Coconut_Cream_Pie_Slice.jpg")


desserts << Dessert.create(name: "Key Lime Pie",
                           category: "pie",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "American dessert made of Key lime juice, egg yolks, and sweetened condensed milk in a pie crust.")
Picture.create(dessert_id: desserts.last.id,
               name: "key lime pie",
               picture_url: "http://1.bp.blogspot.com/-7Z8CcARcNgs/Tevv5d077lI/AAAAAAAACuE/XJIIkjiaxsI/s1600/-1803.jpg")


desserts << Dessert.create(name: "Blueberry Muffin",
                           category: "muffin",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Extra big blueberry muffins are topped with a sugary-cinnamon crumb mixture in this souped-up blueberry muffin recipe.")
Picture.create(dessert_id: desserts.last.id,
               name: "blue berry muffin",
               picture_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSEUOcQfB2Q89l-5FYKb50f0kjjaDfbVic8Lv4m3E1wn2eRiVjq")


desserts << Dessert.create(name: "French Breakfast Muffin",
                           category: "muffin",
                           ingredients: ingred_list,
                           price: rand(7..18),
                           description: "Tender muffins lightly scented with nutmeg and topped with cinnamon sugar.")
Picture.create(dessert_id: desserts.last.id,
               name: "french breakfast muffin",
               picture_url: "http://www.pinpopular.com/wp-content/uploads/2013/12/French-Breakfast-Muffins.jpg")


desserts.each do |dessert|
  rand(2..5).times do
    Review.create(dessert_id: dessert.id,
                  username: Faker::Internet.user_name,
                  body: Faker::Lorem.paragraph,
                  rating: rand(3..5))
  end
end
