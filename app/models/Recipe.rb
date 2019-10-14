class Recipe

attr_reader :name
attr_accessor :ingredient, :user

@@all = []

def initialize(name)
    @name = name
    Recipe.all << self
end

def self.all
    @@all
end

def recipe_cards
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
end

def users
    recipe_cards.map {|instance| instance.user}
end

def num_user
    users.length
end

def self.most_popular
    Recipe.all.max_by {|recipe| recipe.num_user}
end

def ingredients
    recipe_cards.map {|instance| instance.ingredient} 
end

def allergic_users
    all_users = Allergy.all.map {|allergy| allergy.user}
    users.select {|user| all_users.include?(user)}
end

def allergens
    allergic_ingredients = allergic_users.map {|user| user.allergens}.flatten
    allergic_ingredients.map {|instance| instance.ingredient}.uniq
end

def add_ingredients(ingredients_array)
    ingredients_array.map {|ingredient| RecipeIngredient.new(self, ingredient)}
end

end