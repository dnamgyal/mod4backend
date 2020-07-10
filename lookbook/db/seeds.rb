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

item1 = Item.create(name: "tee shirt", category: "top", brand: "H&M", image: "https://i.imgur.com/keuBGFP.png", user_id: user.id)
item2 = Item.create(name: "dress pants", category: "bottom", brand: "Forever 21", image: "https://i.imgur.com/qiCfDoM.png", user_id: user.id)
item3 = Item.create(name: "hat", category: "headwear", brand: "Aeropostale", image: "https://i.imgur.com/Y6CyC0R.png", user_id: user.id)
item4 = Item.create(name: "swim trunks", category: "bottom", brand: "Zoomies", image: "https://i.imgur.com/gUlZaWz.png", user_id: user.id)
item5 = Item.create(name: "footwear", category: "footwear", brand: "H&M", image: "https://pluspng.com/img-png/shoes-png-sneaker-png-transparent-image-2500.png", user_id: user.id)
item6 = Item.create(name: "grey shirt", category: "top", brand: "Supreme", image:"https://i.imgur.com/tOoJnfH.png", user_id: user.id)
item7 = Item.create(name: "casual blazer", category: "top", brand: "Suit Supply", image:"https://i.imgur.com/VqbUqOQ.png", user_id: user.id)

outfit1 = Outfit.create(name: "Summerlook", user_id: user.id)
outfit2 = Outfit.create(name: "Winterlook", user_id: user.id)
outfit3 = Outfit.create(name: "Beach", user_id: user.id)

OutfitItem.create(outfit_id: outfit1.id, item_id: item1.id)
OutfitItem.create(outfit_id: outfit1.id, item_id: item4.id)
OutfitItem.create(outfit_id: outfit1.id, item_id: item3.id)
OutfitItem.create(outfit_id: outfit1.id, item_id: item5.id)



OutfitItem.create(outfit_id: outfit2.id, item_id: item2.id)
OutfitItem.create(outfit_id: outfit2.id, item_id: item6.id)
OutfitItem.create(outfit_id: outfit2.id, item_id: item7.id)

OutfitItem.create(outfit_id: outfit3.id, item_id: item4.id)
OutfitItem.create(outfit_id: outfit3.id, item_id: item3.id)
