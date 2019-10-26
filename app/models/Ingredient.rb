# frozen_string_literal: true

class Ingredient
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    # should return the ingredient instance that the highest number of users are allergic to
    all_allegens = Allergy.all.map { |allergy| allergy.ingredient.name }
    all_allegens.max_by { |val| all_allegens.count(val) }
  end
end
