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
c2 = Cocktail.create(name: "Strength Potion", image: "strength.jpg", description: "Be able to protect the ones you love")
c3 = Cocktail.create(name: "Invisibility Potion", image: "invisibility.jpg", description: "Nothing is off-limits")
c4 = Cocktail.create(name: "Wealth Potion", image: "wealth.jpg", description: "You are one sip from having all you could ever imagine")
c5 = Cocktail.create(name: "Knowlege Potion", image: "knowledge.jpg", description: "Refinement and class are just one sip away")

i1 = Ingredient.create(name: "panthers blood")
i2 = Ingredient.create(name: "unicorn hoof")
i3 = Ingredient.create(name: "orc's wart")
i4 = Ingredient.create(name: "wolverine's claw")
i5 = Ingredient.create(name: "lock of centaurs hair")
i6 = Ingredient.create(name: "swift's tail")
i7 = Ingredient.create(name: "strawberry")

Dose.create(description: "two", cocktail_id: c1.id, ingredient_id: i6.id)
Dose.create(description: "one", cocktail_id: c1.id, ingredient_id: i2.id)
Dose.create(description: "one", cocktail_id: c1.id, ingredient_id: i7.id)