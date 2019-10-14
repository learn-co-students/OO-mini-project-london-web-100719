class Recipe
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        all_recipe_cards = RecipeCard.all.map {|recipecard| recipecard.recipe.name}
        all_recipe_cards.max_by {|val| all_recipe_cards.count(val)}
    end

    def recipe_users
        RecipeCard.all.select {|recipecard| recipecard.recipe == self}
    end

    def users
        self.recipe_users.map(&:user)
    end

    def ingredients
        RecipeIngredient.all.select {|ingredient| ingredient.recipe == self}
    end

    def allergens
        # Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
        
    end

    def add_ingredients(ingredients)
        # Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
        
    end

end




