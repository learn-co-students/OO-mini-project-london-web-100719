class RecipeIngredient

    attr_accessor :ingredients, :recipe

    @@all = []

    def initialize(ingredients, recipe)
        @ingredients = ingredients
        @recipe = recipe
        @@all << self
    end
    
    def self.all
        @@all
    end

end