puts "🌱 Seeding spices..."

# Create Cocktails
cocktails = [
  { name: 'Mojito' },
  { name: 'Cosmopolitan' },
  { name: 'Old Fashioned' },
  { name: 'Piña Colada' },
  { name: 'Margarita' },
  { name: 'Negroni' }
]

cocktails.each { |cocktail| Cocktail.create(cocktail) }

# Create Ingredients
ingredients = [
  { name: 'Lime' },
  { name: 'Mint Leaves' },
  { name: 'White Rum' },
  { name: 'Simple Syrup' },
  { name: 'Cranberry Juice' },
  { name: 'Vodka' }
]

ingredients.each { |ingredient| Ingredient.create(ingredient) }

# Create Drinks with Prices


require 'faker'

# Generate fake data for pictures, names, and prices
pictures = ['drink1.jpg', 'drink2.jpg', 'drink3.jpg', 'drink4.jpg', 'drink5.jpg', 'drink6.jpg']
drink_names = []
drink_prices = []

6.times do
  drink_names << Faker::Beer.name
  drink_prices << Faker::Commerce.price(range: 5..20.0)
end

# Create drinks using the generated data
6.times do |i|
  Drink.create(
    name: drink_names[i],
    price: drink_prices[i],
    picture: pictures[i]
  )
end

drinks = [
  { name: 'Whiskey', price: 1000 },
  { name: 'Gin', price: 999 },
  { name: 'Vodka', price: 1099 },
  { name: 'Tequila', price: 1299 },
  { name: 'Rum', price: 899 },
  { name: 'Bourbon', price: 1399 }
]

drinks.each { |drink| Drinks.create(drink) }


puts "✅ Done seeding!"
