# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

c1 = Cocktail.new(name: "Speed Potion", description: "Never be late again")
c1.photo.attach(io: File.open(URI.open("https://res.cloudinary.com/dsogzo1mn/image/upload/v1605284815/potions/speed_zeu41i.jpg")), 
                filename: "speed_potion.jpg", 
                content_type: "image/jpg")
c1.save

c2 = Cocktail.new(name: "Strength Potion", description: "Always be able to protect the ones you love")
c2.photo.attach(io: File.open(URI.open("https://res.cloudinary.com/dsogzo1mn/image/upload/v1605284815/potions/strength_qjxawm.jpg")), 
                filename: "strength_potion.jpg", 
                content_type: "image/jpg")
c2.save

c3 = Cocktail.new(name: "Invisibility Potion", description: "Nothing will ever be off-limits again")
c3.photo.attach(io: File.open(URI.open("https://res.cloudinary.com/dsogzo1mn/image/upload/v1605284815/potions/invisibility_pv0gaq.jpg")), 
                filename: "invisibility_potion.jpg", 
                content_type: "image/jpg")
c3.save

c4 = Cocktail.new(name: "Wealth Potion", description: "You are one sip away from having all you desire")
c4.photo.attach(io: File.open(URI.open("https://res.cloudinary.com/dsogzo1mn/image/upload/v1605284815/potions/wealth_xtfbl5.jpg")), 
                filename: "wealth_potion.jpg", 
                content_type: "image/jpg")
c4.save

c5 = Cocktail.new(name: "Love Potion", description: "Get ready to live happily ever after")
c5.photo.attach(io: File.open(URI.open("https://res.cloudinary.com/dsogzo1mn/image/upload/v1605284815/potions/love_zswy6b.jpg")), 
                filename: "love_potion.jpg",

                content_type: "image/jpg")
c5.save

c6 = Cocktail.new(name: "Knowledge Potion", description: "Refinement and class are just one sip away")
c6.photo.attach(io: File.open(URI.open("https://res.cloudinary.com/dsogzo1mn/image/upload/v1605284815/potions/knowledge_mvkjis.jpg")), 
                filename: "knowledge_potion.jpg", 
                content_type: "image/jpg")
c6.save

i1 = Ingredient.create(name: "Panthers blood")
i2 = Ingredient.create(name: "Unicorn hoof")
i3 = Ingredient.create(name: "Orc's wart")
i4 = Ingredient.create(name: "Wolverine's claw")
i5 = Ingredient.create(name: "Strands of Centaur hair")
i6 = Ingredient.create(name: "Swift's tail")
i7 = Ingredient.create(name: "Strawberry")
i8 = Ingredient.create(name: "Ectoplasm")
i9 = Ingredient.create(name: "Dragon Smoke")
i10 = Ingredient.create(name: "Four-leaf clover")
i11 = Ingredient.create(name: "Leprechaun dust")
i12 = Ingredient.create(name: "Heart-felt tears")
i13 = Ingredient.create(name: "Sage")
i14 = Ingredient.create(name: "Ebony Bark")

# Speed Potion
Dose.create(description: "Two", cocktail_id: c1.id, ingredient_id: i6.id)
Dose.create(description: "One", cocktail_id: c1.id, ingredient_id: i2.id)
Dose.create(description: "One", cocktail_id: c1.id, ingredient_id: i7.id)

# Strength Potion
Dose.create(description: "Seven", cocktail_id: c2.id, ingredient_id: i3.id)
Dose.create(description: "Four", cocktail_id: c2.id, ingredient_id: i4.id)
Dose.create(description: "One vial", cocktail_id: c2.id, ingredient_id: i1.id)
Dose.create(description: "Three", cocktail_id: c2.id, ingredient_id: i5.id)

# Invisibility Potion
Dose.create(description: "Three teaspoons", cocktail_id: c3.id, ingredient_id: i8.id)
Dose.create(description: "Two puffs", cocktail_id: c3.id, ingredient_id: i9.id)

# Wealth Potion
Dose.create(description: "Seven", cocktail_id: c4.id, ingredient_id: i10.id)
Dose.create(description: "250g", cocktail_id: c4.id, ingredient_id: i11.id)

# Love Potion
Dose.create(description: "3 drops", cocktail_id: c5.id, ingredient_id: i12.id)
Dose.create(description: "1 cup", cocktail_id: c5.id, ingredient_id: i7.id)
Dose.create(description: "10 grams of ground", cocktail_id: c5.id, ingredient_id: i2.id)

# Knowledge Potion
Dose.create(description: "250g", cocktail_id: c6.id, ingredient_id: i13.id)
Dose.create(description: "300g of grated", cocktail_id: c6.id, ingredient_id: i14.id)
