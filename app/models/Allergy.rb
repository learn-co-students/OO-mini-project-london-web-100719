# frozen_string_literal: true

class Allergy
  attr_accessor :name, :user, :ingredient
  @@all = []

  def initialize(name, ingredient)
    @name = name
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end
