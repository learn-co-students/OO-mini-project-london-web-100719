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
        all_recipe_cards.max_by {|item| all_recipe_cards.count(item)}
    end

    def recipe_users
        RecipeCard.all.select {|recipecard| recipecard.recipe == self}
    end

    def users
        self.recipe_users.map {|recipecard| recipecard.user}
        # Alternative way of writing the above:
        # self.recipe_users.map(&:user)
    end

    def ingredients
        RecipeIngredient.all.select {|r_ingredient| r_ingredient.recipe == self}.map {|item| item.ingredient}
    end

    def allergens
        # Partially tested
        recipe_allergens = []

        Allergy.all.each do |user_allergy|
            if self.ingredients.include?(user_allergy.ingredient)
                (recipe_allergens << user_allergy.ingredient)
            end
        end
    end

    Allergy.all.each {|user_allergy| recipe2.ingredients.include?(user_allergy.ingredient)}

    def add_ingredients(ingredients)
        RecipeIngredient.new(self, ingredients)
    end

end




