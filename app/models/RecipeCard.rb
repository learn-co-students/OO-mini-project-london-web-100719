class RecipeCard
    attr_reader :user, :recipe, :date_of_entry, :rating

    @@all = []

    def initialize(date_of_entry, rating, user, recipe)
        @date_of_entry = date_of_entry
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

end