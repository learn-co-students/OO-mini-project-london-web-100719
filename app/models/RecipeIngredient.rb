require 'pry'

class RecipeIngredient

    attr_reader :ingredient, :recipe
    attr_accessor

    @@all = []
    
    def initialize(ingredient, recipe)

        @ingredient = ingredient
        @recipe = recipe

        self.class.all << self

    end

    def self.all

        @@all

    end
    
end