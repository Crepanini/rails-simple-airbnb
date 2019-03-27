# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.delete_all if Rails.env.development?

4.times do
  Flat.create!(name: Faker::University.name, address: Faker::Address.full_address, description: Faker::Movies::PrincessBride.quote, price_per_night: rand(64..2000), number_of_guests: rand(1..8))
end

puts "you've created #{Flat.count} flats"
