class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  validates_uniqueness_of :name
  validates :name, presence: true

#addes to allow to integrate dose form in cocktail form
  accepts_nested_attributes_for :doses

#added to allow to add picture file the# after thumb: crops the image
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100#", mini: "80x80>" },
    :default_url => ":style/missing_avatar.jpg"
  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
