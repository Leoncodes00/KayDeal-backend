# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
    name: "Cha",
    email: "chachaiyang3@gmail.com",
    location: "Seattle, WA",
    funds: 300
)
User.create(
    name: "Leon",
    email: "leonyag1565@gmail.com",
    location: "Tacoma, WA",
    funds: 150
)

Item.create(
    user_id: 2,
    buyer_id: 1,
    image: 'https://www.nintendo.com/content/dam/noa/en_US/hardware/switch/nintendo-switch-new-package/gallery/bundle_color_portable%20(1).jpg',
    name: "Nintendo Switch",
    price: 250
)
Item.create(
    user_id: 1,
    buyer_id: 1,
    image: 'https://i5.walmartimages.com/asr/f91041d4-e83a-41ce-861e-4873e0c674e8_3.7fae6f754ce8fd6de13e37dfd6da4056.jpeg',
    name: "PS4 Controller",
    price: 30
)