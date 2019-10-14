require_relative '../config/environment.rb'

ingredient1 = Ingredient.new("Salt")
ingredient2 = Ingredient.new("Water")
ingredient3 = Ingredient.new("Canned Tomatoes")
ingredient4 = Ingredient.new("White Wine")
ingredient5 = Ingredient.new("Dry Pasta")
ingredient6 = Ingredient.new("Italian Spice Mix")
ingredient7 = Ingredient.new("Potatoes")
ingredient8 = Ingredient.new("Butter")
ingredient9 = Ingredient.new("Milk")

recipe1 = Recipe.new("Tasty Pasta")
recipe2 = Recipe.new("Mashed Potatoes")

recipe1_ingredients = [ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6]
recipe2_ingredients = [ingredient1, ingredient2, ingredient7, ingredient8, ingredient9]

recipe1.add_ingredient(recipe1_ingredients)
recipe2.add_ingredient(recipe2_ingredients)

user1 = User.new("Frank")
user2 = User.new("Annie")
user3 = User.new("Ben")
user4 = User.new("Leah")
user5 = User.new("James")

allergy1 = Allergy.new(ingredient4, user1)
allergy2 = Allergy.new(ingredient8, user2)
allergy3 = Allergy.new(ingredient9, user2)
allergy4 = Allergy.new(ingredient5, user4)
allergy5 = Allergy.new(ingredient5, user5)

recipecard1 = RecipeCard.new(user1, recipe1, 4.4)
recipecard2 = RecipeCard.new(user2, recipe1, 3.8)
recipecard3 = RecipeCard.new(user3, recipe1, 4.8)
recipecard4 = RecipeCard.new(user4, recipe1, 2.4)
recipecard5 = RecipeCard.new(user5, recipe1, 3.7)
recipecard6 = RecipeCard.new(user1, recipe2, 4.9)
recipecard7 = RecipeCard.new(user2, recipe2, 4.8)
recipecard8 = RecipeCard.new(user4, recipe2, 5.0)

binding.pry
