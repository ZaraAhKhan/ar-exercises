require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base 
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :greater_than_or_equal_to => 40 , :less_than_or_equal_to => 200}
  validates :store_id, presence: true
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "LeBlanc", last_name: "Belle", hourly_rate: 45)

@store1.employees.create(first_name: "LeBlanc", last_name: "Beast", hourly_rate: 20)

@store2.employees.create(first_name: "Doe", last_name: "Jane", hourly_rate: 200)

@store2.employees.create(first_name: "Doe", last_name: "John", hourly_rate: 100)

@store2.employees.create(first_name: "Weasley", last_name: "Ron", hourly_rate: 55)


puts employees = Employee.count(:all)

