class User 

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def my_recipes
        RecipeCard.all.select { |rc| rc.user == self }
    end

    def recipes
        #should return all of the recipes this user has recipe cards for
        RecipeCard.all.select {|element| element.user == self}.map {|element| element.recipe}
        #RecipeCard.all.select {|element| element.user == self}.map {&:recipe}
    end 

    def add_recipe_card(date_of_entry, rating, recipe)
        #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
        RecipeCard.new(date_of_entry, rating, self, recipe)
    end 

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end 

    def allergens 
        Allergy.all.select {|element| element.user == self}.map {|element| element.ingredient}
    end 

    def top_three_recipes 
        #should return the top three highest rated recipes for this user.
        #all_user_recipes = RecipeCard.all.select {|element| element.user == self}
        #all_user_recipes.map {|element| element.rating}.sort.reverse[0..2]
        my_recipes.max_by(3) {|recipe| recipe.rating} 
    end 

    def most_recent_recipe
        #should return the recipe most recently added to the user's cookbook.
        self.my_recipes.max_by {|recipe| recipe.date_of_entry}
    end 


end 