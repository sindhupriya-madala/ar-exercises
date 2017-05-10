require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: 'Surrey', annual_revenue: 224000, womens_apparel:true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel:true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each {
    |store|
    puts "name : #{store.name} and annual_revenue : #{store.annual_revenue}"
}

@women_stores = Store.where("womens_apparel = ? AND annual_revenue > ?", true, 1000000)

@women_stores.each {
    |store|
    puts "name : #{store.name} and annual_revenue : #{store.annual_revenue}"
}
# Your code goes here ...
