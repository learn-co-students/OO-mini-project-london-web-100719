# frozen_string_literal: true

class RecipeIngredient
  attr_reader :name
  attr_accessor :recipe, :ingredient
  @@all = []
  def initialize(name)
    @name = name
    @ingredient = ingredient
    @recipe = recipe
    @@ll << self
  end

  def self.all
    @@all
  end

  def ingredient; end

  def recipe; end
end
