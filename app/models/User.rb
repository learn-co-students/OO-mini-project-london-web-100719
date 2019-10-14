class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @@name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def user_recipes
        RecipeCard.all.select {|recipecard| recipecard.user == self}
    end

    def recipes
        self.user_recipes.map(&:recipe)
        # The above is same as saying:
        # self.user_recipes.map {|recipecard| recipecard.recipe}
    end

    def add_recipe_card(date_of_entry, rating, recipe)
        RecipeCard.new(date_of_entry, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}.map {|allergy| allergy.ingredient}
    end

    def top_three_recipes
        self.user_recipes.max_by(3) {|recipe| recipe.rating}
    end

    def most_recent_recipe
        self.user_recipes.max_by {|recipe| recipe.date_of_entry}
    end

end






