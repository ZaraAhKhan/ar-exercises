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
@store1.employees.create(last_name: "test", hourly_rate: 60) # test for first name
@store1.employees.create(first_name: "test", hourly_rate: 60) # test for last name
@store1.employees.create(first_name: "test", last_name: "test", hourly_rate: 300) # test max rate
@store1.employees.create(first_name: "test", last_name: "test", hourly_rate: 10) # test min rate
b = Store.create( # test store name min characters
  name: "B",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)
negative = Store.create( # test store with negative revenue
  name: "Negative",
  annual_revenue: -10,
  mens_apparel: true,
  womens_apparel: true
)

puts "Give us a store name."

@store_name = gets.chomp
new_store_name = Store.create( # test store with missing info
  name: @store_name
)
puts new_store_name.errors.messages