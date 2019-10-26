# frozen_string_literal: true

class Recipe
  attr_accessor :name, :ingredient
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  end

  def users; end

  def ingredients; end

  def allergens; end

  def add_ingredients; end
end
