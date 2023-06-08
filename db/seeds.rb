puts "🌱 Seeding spices..."

require 'faker'

# Generate fake data for cocktails
50.times do
  Cocktail.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.sentence,
    image: Faker::Internet.url
  )
end

# Generate fake data for drinks
50.times do
  Drinks.create(
    name: Faker::Beer.name,
    picture: Faker::Internet.url,
    price: Faker::Number.decimal(l_digits: 2),
    description: Faker::Lorem.sentence
  )
end



puts "✅ Done seeding!"
