require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store4 = Store.create do |x|
  x.name = "Surrey"
  x.annual_revenue = 224000
  x.mens_apparel = false
  x.womens_apparel = true
end

store4 = Store.create do |x|
  x.name = "Whistler"
  x.annual_revenue = 1900000
  x.mens_apparel = true
  x.womens_apparel = false
end

store6 = Store.create do |x|
  x.name = "Yaletown"
  x.annual_revenue = 430000
  x.mens_apparel = true
  x.womens_apparel = true
end

puts Store.count

@mens_stores = Store.where(mens_apparel:true)
 @mens_stores.each do |y| 
  p [y.name , y.annual_revenue]
end

@womens_stores = Store.having('(annual_revenue)< 1000000').group('id','womens_apparel')
 @womens_stores.each do |y|
  p [y.name, y.annual_revenue]
 end