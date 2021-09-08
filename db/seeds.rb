# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying data..."
Customer.destroy_all
Vendor.destroy_all
Item.destroy_all
Order.destroy_all
OrderItem.destroy_all
 
puts "Seeding vendors..."
 
vendors = [
   {
       name: "Kombucha!",
       description: "Serving delicious, organic kombucha in reusable glass containers.",
       category: "Beverage",
       username: "kombuchavendor", 
       password: "kombucha", 
       password_confirmation: "kombucha", 
       is_vendor: true 
   },
   {
       name: "Eggcellent Eggs",
       description: "Local, organic eggs of all types!",
       category: "Animal Products",
       username: "eggvendor", 
       password: "eggs", 
       password_confirmation: "eggs", 
       is_vendor: true 
   },
   {
       name: "Fresh Squeeze",
       description: "Fresh, seasonal fruit juices.",
       category: "Beverage",
       username: "juicevendor", 
       password: "juice", 
       password_confirmation: "juice", 
       is_vendor: true 
   },
   {
       name: "Component Coffee & Tea",
       description: "Artisan roasted coffees and loose-leaf teas.",
       category: "Beverage",
       username: "coffeevendor", 
       password: "coffee", 
       password_confirmation: "coffee"
   },
   {
       name: "Beautiful Arrangements",
       description: "Selling beautiful, fresh, locally-grown flowers.",
       category: "Miscellaneous",
       username: "flowervendor", 
       password: "flower", 
       password_confirmation: "flower", 
       is_vendor: true 
   },
   {
       name: "Yolkohm Ranch",
       description: "Organic, grass-fed meats.",
       category: "Animal Products",
       username: "meatvendor", 
       password: "meat", 
       password_confirmation: "meat", 
       is_vendor: true 
   },
   {
       name: "Sequoia Farms",
       description: "Fresh, organic produce.",
       category: "Produce",
       username: "producevendor", 
       password: "produce", 
       password_confirmation: "produce", 
       is_vendor: true 
   },
   {
       name: "Sage Roots",
       description: "Fresh, organic produce.",
       category: "Produce",
       username: "freshfoodvendor", 
       password: "freshfood", 
       password_confirmation: "freshfood", 
       is_vendor: true 
   },
   {
       name: "Citrus Goods",
       description: "Fresh, organic produce.",
       category: "Produce",
       username: "citrusvendor", 
       password: "citrus", 
       password_confirmation: "citrus", 
       is_vendor: true 
   },
   {
       name: "Berries and More",
       description: "Fresh, organic produce.",
       category: "Produce",
       username: "berryvendor", 
       password: "berries", 
       password_confirmation: "berries", 
       is_vendor: true 
   },
   {
       name: "Modern Macrame",
       description: "Handmade macrame goods.",
       category: "Artisan",
       username: "macramevendor", 
       password: "macrame", 
       password_confirmation: "macrame", 
       is_vendor: true 
   },
   {
       name: "Molly's Soaps",
       description: "Handmade soap.",
       category: "Artisan",
       username: "soapvendor", 
       password: "soap", 
       password_confirmation: "soap", 
       is_vendor: true 
   },
   {
       name: "Delicate Designs",
       description: "Handmade jewelry.",
       category: "Artisan",
       username: "jewelryvendor", 
       password: "jewelry", 
       password_confirmation: "jewelry", 
       is_vendor: true 
   },
   {
       name: "Fido's Fix",
       description: "Homemade, organic dog treats.",
       category: "Miscelaneous",
       username: "dogtreatvendor", 
       password: "dogtreats", 
       password_confirmation: "dogtreats", 
       is_vendor: true 
   },
]
 
vendors.each {|vendor| Vendor.create(name: vendor[:name], description: vendor[:description], category: vendor[:category], username: vendor[:username], password: vendor[:password], password_confirmation: vendor[:password_confirmation], is_vendor: vendor[:is_vendor])}

puts "Seeding items..."

ginger = "https://images.unsplash.com/photo-1599940859674-a7fef05b94ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2luZ2VyJTIwa29tYnVjaGF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
raspberry = "https://images.unsplash.com/photo-1540416465865-1f102746ce47?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFzcGJlcnJ5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
guava = "https://images.unsplash.com/photo-1536511132770-e5058c7e8c46?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3VhdmF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(1).items.create(name:"Ginger Kombucha", image_url: ginger, price: 6)
Vendor.find(1).items.create(name:"Raspberry", image_url: raspberry, price: 6)
Vendor.find(1).items.create(name:"Guava", image_url: guava, price: 6)

chicken_eggs = "https://images.unsplash.com/photo-1570802685082-2224bd954723?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpY2tlbiUyMGVnZ3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
duck_eggs = "https://images.unsplash.com/photo-1620203071880-fab395e9bbfb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZHVjayUyMGVnZ3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(2).items.create(name: "A dozen chicken eggs", image_url: chicken_eggs, price: 6)
Vendor.find(2).items.create(name:"A dozen duck eggs", image_url: duck_eggs, price: 10)

orange_juice = "https://images.unsplash.com/photo-1621506289937-a8e4df240d0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG9yYW5nZSUyMGp1aWNlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
tangerine_juice = "https://images.unsplash.com/photo-1587735243615-c03f25aaff15?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGFuZ2VyaW5lJTIwanVpY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
pomagranate_juice = "https://images.unsplash.com/photo-1603028769333-009800f4e059?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9tZWdyYW5hdGUlMjBqdWljZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(3).items.create(name:"Orange juice", image_url: orange_juice, price: 5)
Vendor.find(3).items.create(name:"Tangerine juice", image_url: tangerine_juice, price: 5)
Vendor.find(3).items.create(name:"Pomagranate juice", image_url: pomagranate_juice, price: 7)

hot_coffee = "https://images.unsplash.com/photo-1518057111178-44a106bad636?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90JTIwY29mZmVlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
iced_coffee = "https://images.unsplash.com/photo-1558122104-355edad709f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aWNlZCUyMGNvZmZlZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(4).items.create(name:"Hot coffee", image_url: hot_coffee, price: 5)
Vendor.find(4).items.create(name:"Iced coffee", image_url: iced_coffee, price: 5)

boquet = "https://images.unsplash.com/photo-1536251106676-60e726a71da3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym9xdWV0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(5).items.create(name:"Flower boquet", image_url: boquet, price: 8)

beef = "https://images.unsplash.com/photo-1588168333986-5078d3ae3976?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVlZnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
bacon = "https://images.unsplash.com/photo-1623047437095-27418540c288?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ya3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(6).items.create(name:"Organic beef", image_url: beef, price: 10)
Vendor.find(6).items.create(name:"Organic bacon", image_url: bacon, price: 7)

cucumbers = "https://images.unsplash.com/photo-1589621316382-008455b857cd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3VjdW1iZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
tomatoes = "https://images.unsplash.com/photo-1615486171815-2611a6e3cd02?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dG9tYXRvc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
carrots = "https://images.unsplash.com/photo-1447175008436-054170c2e979?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fycm90c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(7).items.create(name:"Cucumbers", image_url: cucumbers, price: 3)
Vendor.find(7).items.create(name:"Carrots", image_url: carrots, price: 3)
Vendor.find(7).items.create(name:"Tomatoes", image_url: tomatoes, price: 2)

lettuce = "https://images.unsplash.com/photo-1622206151226-18ca2c9ab4a1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGV0dHVjZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
spinach = "https://images.unsplash.com/photo-1576045057995-568f588f82fb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3BpbmFjaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
kale = "https://images.unsplash.com/photo-1524179091875-bf99a9a6af57?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a2FsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(8).items.create(name: "Lettuce", image_url: lettuce, price: 2)
Vendor.find(8).items.create(name:"Spinach", image_url: spinach, price: 3)
Vendor.find(8).items.create(name:"Kale", image_url: kale, price: 4)

orange ="https://images.unsplash.com/photo-1547514701-42782101795e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8b3JhbmdlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
kiwi = "https://images.unsplash.com/photo-1610917040803-1fccf9623064?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a2l3aXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(9).items.create(name:"Oranges", image_url: orange, price: 1)
Vendor.find(9).items.create(name:"Kiwis", image_url: kiwi, price: 1.50)

strawberries = "https://images.unsplash.com/photo-1464965911861-746a04b4bca6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3RyYXdiZXJyaWVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
cherries = "https://images.unsplash.com/photo-1611096265583-5d745206f2a0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hlcnJpZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(10).items.create(name:"Strawberries", image_url: strawberries, price: 4)
Vendor.find(10).items.create(name:"Cherries", image_url: cherries, price: 5)

hanging_wall = "https://images.unsplash.com/photo-1604014056465-9e90a41e111c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFjcmFtZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(11).items.create(name:"Hanging Wall Decor- Medium", image_url: hanging_wall, price: 15)

soap = "https://images.unsplash.com/photo-1600857544200-b2f666a9a2ec?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFuZG1hZGUlMjBzb2FwfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(12).items.create(name:"Bar of soap", image_url: soap, price: 5)

earrings = "https://images.unsplash.com/photo-1573227895226-86880bc6ce44?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFuZG1hZGUlMjBlYXJyaW5nc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
necklace = "https://images.unsplash.com/photo-1575863438850-fb1c06a33c6f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGhhbmRtYWRlJTIwbmVja2xhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
ring = "https://images.unsplash.com/photo-1602752250015-52934bc45613?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGFuZG1hZGUlMjByaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(13).items.create(name:"Earrings", image_url: earrings, price: 10)
Vendor.find(13).items.create(name:"Necklace", image_url: necklace, price: 10)
Vendor.find(13).items.create(name:"Ring", image_url: ring, price: 10)

dog_treat = "https://images.unsplash.com/photo-1582798358481-d199fb7347bb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZG9nJTIwdHJlYXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
Vendor.find(14).items.create(name:"Dog Treat", image_url: dog_treat, price: 7)

puts "Seeding customers..."
Customer.create(username: "IrynaStein", password: "iryna", password_confirmation: "iryna")
Customer.create(username: "CharJohnson", password: "char", password_confirmation: "char")
Customer.create(username: "AdamTurnupseed", password: "adam", password_confirmation: "adam")

puts "Seeding orders..."
Order.create(subtotal: 20, customer_id: 1)
Order.create(subtotal: 20, customer_id: 2)
Order.create(subtotal: 20, customer_id: 3)

Order.create(subtotal: 15, customer_id: 1)
Order.create(subtotal: 15, customer_id: 2)
Order.create(subtotal: 15, customer_id: 3)

Order.create(subtotal: 10, customer_id: 1)
Order.create(subtotal: 10, customer_id: 2)
Order.create(subtotal: 10, customer_id: 3)

puts "Seeding OrderItem join table..."
OrderItem.create(order_id: 1, item_id: 1)
OrderItem.create(order_id: 1, item_id: 5)
OrderItem.create(order_id: 1, item_id: 21)

OrderItem.create(order_id: 2, item_id: 14)
OrderItem.create(order_id: 2, item_id: 8)
OrderItem.create(order_id: 2, item_id: 28)

OrderItem.create(order_id: 3, item_id: 7)
OrderItem.create(order_id: 3, item_id: 16)
OrderItem.create(order_id: 3, item_id: 2)
