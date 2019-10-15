require 'pry'

class RecipeCard

    attr_reader :user, :recipe, :rating, :date
    attr_accessor

    @@all = []
    
    def initialize(user, recipe, rating, date = Time.now)

        @user = user
        @recipe = recipe
        @date = date
        @rating = rating

        self.class.all << self

    end

    def self.all

        @@all

    end
    
end