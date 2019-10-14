class Allergy

  attr_reader :allergy
  attr_accessor :user, :ingredient
  
  @@all = []
  
  def initialize(user, ingredient)
      @user = user
      @ingredient = ingredient
      Allergy.all << self
  end
  
  def self.all
      @@all
  end

end