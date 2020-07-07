# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.destroy_all
User.destroy_all
Outfit.destroy_all
OutfitItem.destroy_all


user = User.create(username: "dnamgyal", password_digest: "abc123")

item1 = Item.create(name: "blu top", category: "top", brand: "H&M", image: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png", user_id: user.id)
item2 = Item.create(name: "blu jeans", category: "bottom", brand: "Forever 21", image: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png", user_id: user.id)
item3 = Item.create(name: "blu hat", category: "headwear", brand: "Aeropostale", image: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png", user_id: user.id)
item4 = Item.create(name: "blu cardigan", category: "top", brand: "Zoomies", image: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png", user_id: user.id)
item5 = Item.create(name: "blu stilettos", category: "footwear", brand: "H&M", image: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png", user_id: user.id)

outfit1 = Outfit.create(name: "summerlook", user_id: user.id)

OutfitItem.create(outfit_id: outfit1.id, item_id: item1.id)
OutfitItem.create(outfit_id: outfit1.id, item_id: item2.id)
OutfitItem.create(outfit_id: outfit1.id, item_id: item3.id)
OutfitItem.create(outfit_id: outfit1.id, item_id: item5.id)