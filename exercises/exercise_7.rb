require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Validate
  def validate(record)
    if record.hourly_rate < 40 || record.hourly_rate > 200 
     puts "The hourly rate must be between 40 and 200"
    end
  end 
end

class Employee 
  validates :first_name, presence: true
  validates :last_name, presence: true
end
