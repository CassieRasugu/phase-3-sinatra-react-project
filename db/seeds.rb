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

# Create Alcoholic Drinks with Prices
alcoholic_drinks = [
  { name: 'Whiskey', price: 10.99 },
  { name: 'Gin', price: 9.99 },
  { name: 'Vodka', price: 11.99 },
  { name: 'Tequila', price: 12.99 },
  { name: 'Rum', price: 8.99 },
  { name: 'Bourbon', price: 13.99 }
]

alcoholic_drinks.each { |drink| AlcoholicDrink.create(drink) }


puts "✅ Done seeding!"
