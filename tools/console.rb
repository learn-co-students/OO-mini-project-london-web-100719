require_relative '../config/environment.rb'

require 'Date'

li = User.new("Li")
alex = User.new("Alex")
sergio = User.new("Sergio")

chocolate_cake = Recipe.new("Chocolate Cake")
chocolate_cake.add_ingredients(["Chocolate", "Nuts", "Eggs"])

carrot_cake = Recipe.new("Carrot Cake")
carrot_cake.add_ingredients(["Carrot", "Eggs", "Flour"])

li.add_recipe_card(chocolate_cake, "2019-05-05", 8)

alex.declare_allergy("Nuts")
li.declare_allergy("Nuts")
sergio.declare_allergy("Nuts")
li.declare_allergy("Chocolate")

binding.pry
0
