class User

attr_reader :name
attr_accessor

@@all = []

def initialize(name)
    @name = name
    User.all << self
end

def self.all
    @@all
end

def allergens
    Allergy.all.select {|allergy| allergy.user == self}
end

def recipes
    RecipeCard.all.select {|recipe_card| recipe_card.user == self}
end

def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
end

def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
end

def top_three_recipes
    recipes.sort_by {|recipe| -recipe.rating}.slice(0,3)
end

def most_recent_recipe
    recipes.max_by {|recipe| recipe.date}
end

end