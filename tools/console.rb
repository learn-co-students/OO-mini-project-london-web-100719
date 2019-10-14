require_relative '../config/environment.rb'

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe1")
recipe4 = Recipe.new("recipe2")
recipe5 = Recipe.new("recipe1")
recipe6 = Recipe.new("recipe2")

ingredient1 = Ingredient.new("ingredient1")
ingredient2 = Ingredient.new("ingredient2")
ingredient3 = Ingredient.new("ingredient3")
ingredient4 = Ingredient.new("ingredient4")
ingredient5 = Ingredient.new("ingredient5")
ingredient_array = [ingredient3, ingredient4]

recipe_ingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipe_ingredient2 = RecipeIngredient.new(recipe2, ingredient1)
recipe_ingredient3 = RecipeIngredient.new(recipe1, ingredient1)
recipe_ingredient4 = RecipeIngredient.new(recipe1, ingredient2)
recipe_ingredient5 = RecipeIngredient.new(recipe1, ingredient3)
recipe_ingredient6 = RecipeIngredient.new(recipe2, ingredient4)
recipe_ingredient7 = RecipeIngredient.new(recipe2, ingredient5)

user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")
user4 = User.new("user4")
user5 = User.new("user5")
user6 = User.new("user6")
user7 = User.new("user7")
user8 = User.new("user8")

allergy1 = Allergy.new(user1 , ingredient1)
allergy2 = Allergy.new(user1 , ingredient2)
allergy3 = Allergy.new(user1 , ingredient3)
allergy4 = Allergy.new(user2 , ingredient2)
allergy5 = Allergy.new(user3 , ingredient2)
allergy6 = Allergy.new(user4 , ingredient2)
allergy7 = Allergy.new(user5 , ingredient5)

recipe_card1 = RecipeCard.new(user1, recipe1, 1991, 5)
recipe_card6 = RecipeCard.new(user1, recipe6, 1990, 6)
recipe_card7 = RecipeCard.new(user1, recipe5, 1990, 7)
recipe_card8 = RecipeCard.new(user1, recipe3, 1990, 6)
recipe_card9 = RecipeCard.new(user1, recipe4, 1990, 7)
recipe_card2 = RecipeCard.new(user2, recipe1, 1995, 10)
recipe_card3 = RecipeCard.new(user3, recipe3, 1990, 5)
recipe_card4 = RecipeCard.new(user4, recipe4, 1995, 10)



binding.pry
