# completed
class Allergy

    attr_reader :user, :ingredient

    @@all = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def self.allergens
        self.all.map {|allergy| allergy.ingredient}.uniq
    end
end