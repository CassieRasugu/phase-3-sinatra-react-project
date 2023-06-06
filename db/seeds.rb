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
