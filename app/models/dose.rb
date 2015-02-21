class Dose < ActiveRecord::Base
  belongs_to :cocktail, inverse_of: :doses
  belongs_to :ingredient
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
  validates :cocktail, :ingredient, :description, presence: true
end
