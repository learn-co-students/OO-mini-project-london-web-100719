class Recipe
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    RecipeIngredient.all.select { |recipe_ing| recipe_ing.recipe == self }
    .map {|recipe_ing| recipe_ing.ingredient }.flatten
  end

  def cards
    RecipeCard.all.select { |card| card.recipe == self }
  end

  def users
    self.cards.map { |card| card.user }
  end

  def popularity
    users.count
  end

  def allergens
    # allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
    # We will handle this in two steps:
    # First, look through all the allergies and pull out the ones that are relevant to our recipe. 
    # Then, pull out the ingredients from the relevant allergies. 
    Allergy.all.select { |allergy| self.ingredients.include?(allergy.ingredient)}
    .map{ |allergy| allergy.ingredient }
  end

  def self.most_popular
    #most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    self.all.max_by(&:popularity)
  end

  def add_ingredient(ingredient)
    RecipeIngredient.new(self, ingredient)
  end

end