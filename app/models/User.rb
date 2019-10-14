require 'Date'

class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes 
        RecipeCard.all.select{|recipeCard| recipeCard.user == self}
    end 

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(allergen)
        Allergy.new(self, Ingredient.all.find{|ingredient| ingredient.name == allergen})
    end

    def allergens
        Allergy.all.select{|allergen| allergen.user == self}
    end

    def top_three_recipes
        recipes.sort_by{|recipeCard| recipeCard.rating}[-3..-1]
    end

    def most_recent_recipe
        recipes.sort_by{|recipeCard| recipeCard.date}[-1]
    end

end