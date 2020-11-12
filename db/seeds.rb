# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

c1 = Cocktail.create(name: "Speed Potion", image: "speed.jpg", description: "Never be late again")
c2 = Cocktail.create(name: "Strength Potion", image: "strength.jpg", description: "Always be able to protect the ones you love")
c3 = Cocktail.create(name: "Invisibility Potion", image: "invisibility.jpg", description: "Nothing will ever be off-limits again")
c4 = Cocktail.create(name: "Wealth Potion", image: "wealth.jpg", description: "You are one sip away from having all you desire")
c5 = Cocktail.create(name: "Love Potion", image: "love.jpg", description: "Get ready to live happilly ever after")
c6 = Cocktail.create(name: "Knowledge Potion", image: "knowledge.jpg", description: "Refinement and class are just one sip away")

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
