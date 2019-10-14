class Recipe 
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def ingredients
        RecipeIngredient.all.select {|element| element.recipe == self}
    end 

    def users
        #should return the user instances who have recipe cards with this recipe
        RecipeCard.all.select {|recipecard| recipecard.recipe == self}
    end 

    def allergens 
        #should return all of the Ingredients in this recipe that are allergens for Users in our system.
        Allergy.all.map {|allergens| allergens.ingredient == self.ingredients}
    end

    def add_ingredients(ingredients)
        #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
        @@all << ingredients
    end 

    def self.all 
        @@all 
    end 

    def self.most_popular 
        #should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
        all_recipes = RecipeCard.all.map {|element| element.recipe.name}
        all_recipes.max_by {|val| all_recipes.count(val)}
    end 

end 