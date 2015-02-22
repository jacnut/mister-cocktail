class Ingredient < ActiveRecord::Base
  has_many :doses
  validates_uniqueness_of :name
  validates :name, presence: true
  #no controller for Ingredient, the ingredients were seeded and are fixed
end
