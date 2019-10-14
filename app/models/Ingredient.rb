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
        sorted_array =  Allergy.all.map {|obj| obj.ingredient}
        sorted_array.max_by{|allergen| sorted_array.count(allergen)}
    end

end
