class Ingredient
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergic_count
    Allergy.all.select { |allergy| allergy.ingredient == self }.size
  end

  def self.most_common_allergen
    # most_common_allergen should return the ingredient instance that the highest number of users are allergic to
    self.all.max_by(&:allergic_count)
    self.all.max_by { |ingredient| ingredient.allergic_count }
  end

end
