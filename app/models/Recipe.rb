require 'pry'

class Recipe

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    def users
        RecipeCard.all.select {|card| card.recipe == self}.map {|card| card.user}
    end

    def most_popular
    end

    def allergens
        # self.ingredients.map{|ingredient| ingredient.allergens}.flatten.uniq.delete_if(&:nil?)
    end

    def ingredients
        RecipeIngredient.all.select {|recipeIngredient| recipeIngredient.recipe == self}
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            Ingredient.new(ingredient)
            RecipeIngredient.new(ingredient, self)
        end
    end

end 


