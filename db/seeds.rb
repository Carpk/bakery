# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dessert.create(name: "Chocolate Cake",
                category: "cakes",
                description: "Cake, with chocolate")

Dessert.create(name: "Carrot Cake",
                category: "cakes",
                description: "Carrot cake is a sweet and moist spice cake, full of cut carrots and toasted nuts, and covered in cream cheese icing.")

Dessert.create(name: "Apple Pie",
                category: "pies",
                description: " this crispy/ flakey crust and in the crust is moist, kinda mushy apples that usually have cinamin on them and it tastes SOOOOO good. ")

Dessert.create(name: "Banana Muffins",
                category: "muffins",
                description: "Perfect for a grab-and-go breakfast, these tiny yet powerful energy boosters will add ease to the hectic morning.")

Picture.create(dessert_id: 1,
                name: "chocolate cake",
                picture_url: "http://cimages.proflowers.com/is/image/ProvideCommerce/GFB_13_SCA6AMERBTY_PR1000_W1_SQ")

Picture.create(dessert_id: 2,
                name: "carrot cake",
                picture_url: "http://rossumiati.com/wp-content/uploads/2014/06/Carrot-Cake.jpg")

Picture.create(dessert_id: 3,
                name: "apple pie",
                picture_url: "http://img4-2.myrecipes.timeinc.net/i/recipes/ck/02/05/apple-pie-ck-709820-l.jpg")

Picture.create(dessert_id: 4,
                name: "banana muffins",
                picture_url: "http://pinchmysalt.files.wordpress.com/2007/05/best-banana-muffin.jpg")