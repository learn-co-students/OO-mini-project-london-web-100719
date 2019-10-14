require 'pry'

class Allergy

    attr_reader :ingredient, :user
    attr_accessor

    @@all = []
    
    def initialize(ingredient, user)

        @ingredient = ingredient
        @user = user

        self.class.all << self

    end

    def self.all

        @@all

    end
    
end