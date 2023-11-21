require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Create 3 more stores
Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)
Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)
Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)
# Retrieve stores that carry men's apparel using the WHERE class method
@mens_stores = Store.where(mens_apparel: true)

# Iterate through and output the name and annual revenue of each store
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "#{store.name}: Annual Revenue - #{store.annual_revenue}"
end

# Retrieve stores that carry women's apparel and generate less than $1M in annual revenue
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

# Display the name and annual revenue of each women's store
puts "\nWomen's Apparel Stores with Annual Revenue < $1M:"
@womens_stores.each do |store|
  puts "#{store.name}: Annual Revenue - #{store.annual_revenue}"
end
