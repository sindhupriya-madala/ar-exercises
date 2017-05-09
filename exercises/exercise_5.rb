require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

sum = Store.all.sum(:annual_revenue)
p "sum of annual_revenue of all stores is: #{sum}"
count = Store.count

p "average annual_revenue of all stores is: #{sum/count}"

p Store.where("annual_revenue > ?", 1000000).count
# Your code goes here ...
