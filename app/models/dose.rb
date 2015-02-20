class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :cocktail, scope: :ingredient_id
  validates_presence_of :description

  validates_associated :cocktail, :ingredient

end
