class Cocktail < ActiveRecord::Base
  has_many :ingredients

  validates :name, presence: true
end





