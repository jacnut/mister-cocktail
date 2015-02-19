class Ingredient < ActiveRecord::Base
  has_many :doses
  validates_uniqueness_of :name
  validates :name, presence: true
end
