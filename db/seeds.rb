# frozen_string_literal: false

puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Database is clean'

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "Creating restaurants number #{restaurant.id}"
end

puts 'Finished!'
