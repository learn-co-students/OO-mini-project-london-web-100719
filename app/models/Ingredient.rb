require 'pry'

class Ingredient

    attr_reader :name
    attr_accessor

    @@all = []
    
    def initialize(name)

        @name = name

        self.class.all << self

    end

    def self.all

        @@all

    end

    def self.most_common_allergen

        all_allergens = User.all.map {|user| user.allergens}.flatten
        all_allergens.max_by { |allergen| all_allergens.count(allergen) }
    end

end