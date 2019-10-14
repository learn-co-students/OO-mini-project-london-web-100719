class Ingredient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        allergen_array =  Allergy.all.map {|allergen| allergen.ingredient}
        allergen_array.max_by{|allergen| allergen_array.count(allergen)}
    end

end
