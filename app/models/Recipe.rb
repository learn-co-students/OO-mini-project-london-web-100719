# completed
class Recipe

    attr_accessor :recipe # name
 
    @@all = []

    def initialize(recipe)
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        recipe_count = Hash.new(0)
        RecipeCard.all.each {|recipe_card| recipe_count[recipe_card.recipe] += 1}
        sorted_most_popular = recipe_count.sort_by {|recipe, count| -count}
        sorted_most_popular[0]
    end

    def users
        uniq_users_by_recipe_card = RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}.uniq
        uniq_users_by_recipe_card.map {|recipe_cards| recipe_cards.user}
    end

    def ingredients
        recipe_list = RecipeIngredient.all.select {|recipe_ingredients| recipe_ingredients.recipe == self}
        recipe_list.map {|recipeingredients| recipeingredients.ingredient}
    end

    def allergens
        ingredients.select {|ingredient| Allergy.allergens.include?(ingredient) }    
        ## Allergy.all return unique ingredients
        ## Match with #ingredients
    end

    def add_ingredients(ingredient_array) # array
        ingredient_array.each {|ingredient| RecipeIngredient.new(self, ingredient) }
    end

end