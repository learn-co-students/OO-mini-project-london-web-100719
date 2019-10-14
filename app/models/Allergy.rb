class Allergy

    attr_accessor :user, :ingredient

    @@all = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.unique_allergens
        unique_allergies = self.all.map{|allergen| allergen.ingredient}.uniq
    end

end