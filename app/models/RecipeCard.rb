class RecipeCard
  @@all = []
  attr_reader :user, :recipe, :rating, :date

  def initialize(user, recipe, rating, date = Time.now)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end