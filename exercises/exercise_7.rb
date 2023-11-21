require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Ask the user for a store name
puts "Enter a store name:"
store_name = gets.chomp

# Attempt to create a store with the inputted name but leave out other fields
new_store = Store.new(name: store_name)

# Print the error messages provided back from ActiveRecord
if new_store.save
  puts "Store created successfully!"
else
  puts "Failed to create store. Errors:"
  puts new_store.errors.full_messages
end