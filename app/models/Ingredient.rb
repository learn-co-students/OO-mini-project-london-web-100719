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
        #should return the ingredient instance that the highest number of users are allergic to
        allergens = Allergy.all.map {|element| element.ingredient.name}
        allergens.max_by {|val| allergens.count(val)}
    end 


end 
