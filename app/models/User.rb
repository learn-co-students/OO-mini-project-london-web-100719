require 'pry'

class User

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

    def recipe_cards

        RecipeCard.all.select {|recipe_card| recipe_card.user == self}
        
    end

    def recipes

        recipe_cards.map {|card| card.recipe}
        
    end

    def add_recipe_card(recipe, date, rating)

        RecipeCard.new(self, recipe, rating, date)
        
    end

    def declare_allergy(ingredient)

        Allergy.new(ingredient, self)
        
    end

    def allergens

        Allergy.all.select {|allergy| allergy.user == self}.map {|e| e.ingredient}
        
    end

    def top_three_recipes

        self.recipe_cards.sort_by {|rc| -rc.rating}
        
    end

    def most_recent_recipe

        self.recipe_cards[-1].recipe
        
    end

    def safe_recipes

        Recipe.all.reject {|recipe| (recipe.ingredients & self.allergens)[0]}
        
    end
    
end