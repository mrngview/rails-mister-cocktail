# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file_info = open(url).read
ingredients_list = JSON.parse(file_info)

# puts "#{user["name"]} - #{user["bio"]}"

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "pineapple")
# Ingredient.create(name: "strawberry")
# Ingredient.create(name: "mango")

ingredients_list["drinks"].each do |i|
  Ingredient.create(name: i["strIngredient1"])
end

