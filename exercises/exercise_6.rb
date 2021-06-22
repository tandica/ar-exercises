require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store 
  has_many :employees
end

class Employee 
  belongs_to :Store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Tandica", last_name: "Williams", hourly_rate: 2000)
@store2.employees.create(first_name: "Karim", last_name: "Benzenzen", hourly_rate: 60)
@store2.employees.create(first_name: "Cindy", last_name: "Crawhonda", hourly_rate: 80)