require_relative '../config/environment.rb'


qing = User.new("Qing")
gee = User.new("Gee")
li = User.new("Li")

dumplings = Recipe.new("dumplings")
noodles = Recipe.new("noodles")
soup = Recipe.new("soup")

recipecard1 = RecipeCard.new(qing, dumplings, 2013, 10)
recipecard2 = RecipeCard.new(qing, noodles, 1990, 9)
recipecard3 = RecipeCard.new(qing, soup, 3000, 8)
recipecard4 = RecipeCard.new(gee, noodles, 2015, 4)
recipecard5 = RecipeCard.new(li, noodles, 2019, 3)
recipecard6 = RecipeCard.new(li, soup, 2000, 6)

cheese = Ingredient.new("cheese")
fish = Ingredient.new("fish")
bear = Ingredient.new("bear")
milk = Ingredient.new("milk")
nuts = Ingredient.new("nuts")
eggs = Ingredient.new("eggs")
beans = Ingredient.new("beans")
wheat = Ingredient.new("wheat")

allergy1 = qing.declare_allergy(cheese)
allergy2 = qing.declare_allergy(beans)
allergy3 = qing.declare_allergy(milk)
allergy4 = gee.declare_allergy(milk)
allergy5 = gee.declare_allergy(wheat)
allergy6 = li.declare_allergy(beans)
allergy7 = li.declare_allergy(eggs)
allergy8 = li.declare_allergy(nuts)
allergy9 = li.declare_allergy(milk)

recipeingredient1 = RecipeIngredient.new(dumplings, fish)
recipeingredient2 = RecipeIngredient.new(dumplings, cheese)
recipeingredient3 = RecipeIngredient.new(dumplings, bear)
recipeingredient4 = RecipeIngredient.new(noodles, milk)
recipeingredient5 = RecipeIngredient.new(noodles, nuts)
recipeingredient6 = RecipeIngredient.new(noodles, cheese)
recipeingredient7 = RecipeIngredient.new(noodles, eggs)
recipeingredient8 = RecipeIngredient.new(soup, cheese)
recipeingredient9 = RecipeIngredient.new(soup, eggs)
recipeingredient10 = RecipeIngredient.new(soup, beans)
recipeingredient11 = RecipeIngredient.new(soup, bear)


binding.pry
