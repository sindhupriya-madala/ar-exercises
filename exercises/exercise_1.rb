require_relative '../setup'

puts "Exercise 1"
puts "----------"

Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel:true).save
Store.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel:true).save
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true).save

puts Store.all.count
# Your code goes below here ...
