class Ingredient

  attr_reader :name
  attr_accessor
  
  @@all = []
  
  def initialize(name)
      @name = name
      Ingredient.all << self
  end
  
  def self.all
      @@all
  end

  def allergic_users
    allergens = Allergy.all.select {|allergy| allergy.ingredient == self}
    allergens.map {|instance| instance.user}
  end

  def num_users
    allergic_users.size
  end

  def self.most_common_allergen
    Ingredient.all.max_by {|ingredient| ingredient.num_users}
  end


end
