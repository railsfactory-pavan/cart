# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product1 = Product.create name: "LG Freezer", description: "The good freezer for home", price: "10,000"
product2 = Product.create name: "LG Mobile", description: "The good Mobile for you", price: "9,000"
product3 = Product.create name: "LG TV", description: "The good TV for home", price: "11,000"