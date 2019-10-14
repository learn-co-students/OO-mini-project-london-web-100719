# completed
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

    def recipes
        RecipeCard.all.select {|recipe_card| recipe_card.user == self }
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select {|allergen| allergen.user == self }
    end

    def top_three_recipes
        sorted_recipes = self.recipes.sort_by {|recipe| recipe.rating}
        top_three_recipes_array = sorted_recipes.reverse.slice(0..2)
        # top_three_recipes_instance = top_three_recipes_array.map {|recipe| recipe.recipe}
    end

    def most_recent_recipe
        recipes.max_by {|recipe_card| recipe_card.date} 
    end

    # def safe_recipes
    #     # array of ingredients that are allergens
    #     user_ingredient_allergens = self.allergens.map {|allergy| allergy.ingredient}
    #     # recipes have ingredients
    #     RecipeIngredient.all
    #     # keep recipe if it does not have ingredient
    #     # WILL REVISIT LATER
    # end

end