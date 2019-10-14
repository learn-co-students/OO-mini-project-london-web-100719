require_relative '../config/environment.rb'

flo = User.new('flo')
gordy = User.new('gordy')


flo_pasta = Recipe.new("flo's pasta")
gordy_cookies = Recipe.new("gordy's cookies")

pasta_ingredients = [ 
  spaghetti = Ingredient.new('spaghetti'),
  sauce = Ingredient.new('marinara'),
  garlic = Ingredient.new('garlic'),
  cheese = Ingredient.new('parmesan')
]

cookie_ingredients = [
  flour = Ingredient.new('flour'),
  sugar = Ingredient.new('sugar'),
  egg = Ingredient.new('egg'),
  chocolate = Ingredient.new('chocolate')
]

flo.add_recipe_card(flo_pasta, 5, '10/10/19')
gordy.add_recipe_card(gordy_cookies, 4, '10/14/19')

flo_pasta_ingredients = RecipeIngredient.new(flo_pasta, pasta_ingredients)
gordy_cookies_ingredients = RecipeIngredient.new(gordy_cookies, cookie_ingredients)

flo.declare_allergy(flour)
gordy.declare_allergy(cheese)


binding.pry
