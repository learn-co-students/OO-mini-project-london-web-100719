# frozen_string_literal: true

class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def user_recipes
    RecipeCard.all.select { |rc| rc.user == self }
  end

  def recipes
    # should return all of the recipes this user has recipe cards for
    user_recipes.map(&:recipe)
    # {|recipe| recipe.recipe}
  end

  def add_recipe_card(date_of_entry, rating, recipe)
    # should accept a recipe instance as an argument, as well as a date and rating,
    # and create a new recipe card for this user and the given recipe
    RecipeCard.new(date_of_entry, rating, self, recipe)
  end

  def declare_allergy(ingredient)
    # create new allergy
    Allergy.new(self, ingredient)
  end

  def allergens
    Allergy.all.select { |allergy| allergy.user == self }.map(&:ingredient)
  end

  def top_three_recipes
    # should return the top three highest rated recipes for this user.
    user_recipes.max_by(3, &:rating)
  end

  def most_recent_recipe
    user_recipes.max_by(&:date_of_entry)
  end
end
