require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# Get the 3rd store from the db and assign it to @store3
@store3 = Store.find(3)

# Delete the 3rd store from the db using Active Record's destroy method
@store3.destroy

# Display the number of stores after deletion
puts "Number of stores after deletion: #{Store.count}"