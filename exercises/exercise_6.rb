require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "sindhu", last_name: "madala", hourly_rate: 45).save
@store1.employees.create(first_name: "manoj", last_name: "madala", hourly_rate: 40).save

@store2.employees.create(first_name: "kv", last_name: "kurram", hourly_rate:60).save
@store2.employees.create(first_name: "david", last_name: "don", hourly_rate:50).save
# Your code goes here ...
