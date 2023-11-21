require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the 1st store from the db and assign it to @store1
@store1 = Store.find(1)

# Load the 2nd store from the db and assign it to @store2
@store2 = Store.find(2)

# Update the 1st store's instance in the db
@store1.update(name: 'Calgary')

# Output the updated store information
puts "Updated store name: #{@store1.name}"