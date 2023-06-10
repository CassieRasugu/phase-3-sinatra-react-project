puts "🌱 Seeding spices..."

require 'faker'
require 'faker'
require 'httparty'

# Fetch a random cocktail image URL from Unsplash API
def fetch_cocktail_image
  response = HTTParty.get('https://api.unsplash.com/photos/random', query: {
    query: 'cocktail',
    client_id: 'YOUR_UNSPLASH_API_ACCESS_KEY'
  })
  image_url = JSON.parse(response.body)['urls']['regular']
  image_url || Faker::LoremFlickr.image(size: '300x300', search_terms: ['cocktail'])
end

# Fetch a random drink image URL from Unsplash API
def fetch_drink_image
  response = HTTParty.get('https://api.unsplash.com/photos/random', query: {
    query: 'drink',
    client_id: 'YOUR_UNSPLASH_API_ACCESS_KEY'
  })
  image_url = JSON.parse(response.body)['urls']['regular']
  image_url || Faker::LoremFlickr.image(size: '300x300', search_terms: ['drink'])
end

puts "🌱 Seeding spices..."

# Generate fake data for cocktails
20.times do
  Cocktail.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.sentence,
    image: fetch_cocktail_image
  )
end

# Generate fake data for drinks
20.times do
  Drink.create(
    name: Faker::Beer.name,
    picture: fetch_drink_image,
    price: Faker::Number.decimal(l_digits: 2),
    description: Faker::Lorem.sentence
  )
end

puts "✅ Done seeding!"

