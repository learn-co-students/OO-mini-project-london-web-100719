class User
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    # Are these unique?
    Allergy.all.select { |allergy| allergy.user == self }
    .map { |allergy| allergy.ingredient }
  end

  def add_recipe_card(recipe, rating, date)
    RecipeCard.new(self, recipe, date, rating)
  end

  def recipes
    RecipeCard.all.select { |card| card.user == self }
    .map{ |card| card.recipe }
  end

  def my_recipe_cards
    RecipeCard.all.select { |card| card.user == self }
  end

  def top_three_recipes
    self.my_recipe_cards.sort_by { |card| card.rating }.reverse[0..2]
    .map{ |card| card.recipe }
  end

  def most_recent_recipes
    self.my_recipe_cards.sort_by { |card| card.date }.last.recipe
  end

end