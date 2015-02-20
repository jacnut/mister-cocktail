class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  validates_uniqueness_of :name
  validates :name, presence: true

  accepts_nested_attributes_for :doses
end
