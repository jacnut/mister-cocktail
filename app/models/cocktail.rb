class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  validates_uniqueness_of :name
  validates :name, presence: true

  accepts_nested_attributes_for :doses

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100#" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
