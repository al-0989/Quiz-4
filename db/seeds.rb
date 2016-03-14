# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Company.create(name: "Apple", products:["iMac", "iPhone", "iPad"])
# Company.create(name: "Toyota", products:["Corolla", "Matrix", "Rav4"])

10.times do
  arr = ["Chapter 1", "Ruby", "Hockey", "Pizza", "JS", "Chapter 2", "Chapter 3", "Pugs", "Bananas", "Chapter 3", "iMac", "Cheese", "Coffee", ]
  Company.create(name: Faker::Company.bs, products: arr.sample(3))
end
