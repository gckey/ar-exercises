require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Add some data into employees under @store1 and @store2
@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "John",
  last_name: "Doe",
  hourly_rate: 50
)
@store1.employees.create(
  first_name: "Jane",
  last_name: "Smith",
  hourly_rate: 55
)

@store2.employees.create(
  first_name: "Bob",
  last_name: "Johnson",
  hourly_rate: 45
)
@store2.employees.create(
  first_name: "Alice",
  last_name: "Williams",
  hourly_rate: 48
)

# Print the number of employees for store 1 and 2
puts "Number of employees at #{@store1.name}: #{@store1.employees.count}"
puts "Number of employees at #{@store2.name}: #{@store2.employees.count}"