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

    def self.most_popular
        recipe_card_array = RecipeCard.all.map {|card| card.recipe}
        recipe_card_array.max_by{|recipe| recipe_card_array.count(recipe)}
    end

    def ingredients
        RecipeIngredient.all.select {|recipeIngredient| recipeIngredient.recipe == self}
    end

    def allergens
        ingredients && Allergy.unique_allergens
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            create_new_ingredient?(ingredient)
            RecipeIngredient.new(ingredient, self)
        end
    end

    def create_new_ingredient?(ingredient)
        ingredient_name_array = Ingredient.all.map{|ingredient| ingredient.name}
        if !(ingredient_name_array.include?(ingredient))
            Ingredient.new(ingredient)
        end
    end

end