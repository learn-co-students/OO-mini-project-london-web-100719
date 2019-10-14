# completed
class Ingredient

    attr_reader :ingredient # name

    @@all = []

    def initialize(ingredient)
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        allergy_count = Hash.new(0)
        Allergy.all.each {|allergy| allergy_count[allergy.ingredient] += 1}
        sorted_highest_count = allergy_count.sort_by {|ingredient, count| -count }
        sorted_highest_count[0]
    end

end


