require 'pry'

class Recipe

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

    def cards

        RecipeCard.all.select {|card| card.recipe == self}
        
    end

    def self.most_popular

        Recipe.all.max_by {|recipe| recipe.cards.size}
        
    end

    def users

        self.cards.map {|card| card.user}
        
    end

    def ingredients

        RecipeIngredient.all.select {|rec_ing| rec_ing.recipe == self}.map {|rec_ing| rec_ing.ingredient}
        
    end

    def add_ingredient(ingredient_arr)

        ingredient_arr.map {|ingredient| RecipeIngredient.new(ingredient, self)}
        
    end

    def allergens

        all_user_allergens = self.users.map {|user| user.allergens}.flatten.uniq

        all_user_allergens & self.ingredients
        
    end

    #     self.users
    #     Allergy.all.map {|allergy| allergy.}

    #     # Allergy.all.select do |allergy|

    #     #     users_allergens << User.all.select {|user| allergy.user == user}

    #     #     # binding.pry

    #     # end
    #     binding.pry

    #     users_allergens.flatten
        
    # end
    
end