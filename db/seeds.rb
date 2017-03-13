# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'nokogiri'
require 'open-uri'

######################INGREDIENTS GENERATOR##################################
url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file_info = open(url).read
ingredients_list = JSON.parse(file_info)

ingredients_list["drinks"].each do |i|
  Ingredient.create(name: i["strIngredient1"])
end

######################COCKTAILS GENERATOR##################################
html_file = open("https://en.wikipedia.org/wiki/List_of_cocktails")
html_doc = Nokogiri::HTML(html_file)

titles = html_doc.css('div.div-col.columns.column-width ul li a')
array = []
titles.each do |element|
  array << element.text
end
array.each do |tlt|
  Cocktail.create(name: tlt)
end
