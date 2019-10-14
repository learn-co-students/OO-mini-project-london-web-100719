class RecipeIngredient
    attr_reader :recipe, :ingredient

    @@all =[]

    def initialize(recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient
    end

    def self.all
        @@all
    end
end