require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
#Print the total revenue for all stores
total_revenue = Store.sum(:annual_revenue)
puts "Total company revenue: #{total_revenue}"

#Print the average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores: #{average_revenue}"

#Print the number of stores generating $1M or more in annual sales
high_revenue_stores = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of stores generating $1M or more in annual sales: #{high_revenue_stores}"