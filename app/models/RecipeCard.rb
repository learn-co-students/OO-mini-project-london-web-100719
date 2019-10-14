class RecipeCard

attr_reader :date, :rating
attr_accessor :user, :recipe

@@all = []

def initialize(user, recipe, date, rating)
    @recipe = recipe
    @user = user
    @date = date
    @rating = rating
    RecipeCard.all << self
end



def self.all
    @@all
end

end