require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# puts "enter store name :"
# store = gets.chomp

# p Store.find_by(name: store)

puts "enter store name to store inside stores table"
storename = gets.chomp
newStore = Store.create(name: storename, annual_revenue: 50)

if newStore.errors.any?
    puts "Found new validation errors"
    puts newStore.errors.full_messages
else 
    puts 'new store created successfully'
    puts newStore.inspect
end
# Your code goes here ...
