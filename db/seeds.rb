# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning database...'
# Ingredient.destroy_all

# puts 'Creating ingredients...'
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "triple sec")
# Ingredient.create(name: "triple sec")
# puts "Finished!"

Ingredient.destroy_all
Cocktail.destroy_all

puts 'Populating my database...'

cocktails = ['Long island ice tea', 'Margarita', 'Moscow Mule']

cocktails.each do |cocktail|
  Cocktail.create(name: cocktail)
end

require 'rest-client'
require 'json'

puts 'Creating ingredients...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = RestClient.get(url)
results = JSON.parse(response)
ingredients = results['drinks']

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Finished!'
