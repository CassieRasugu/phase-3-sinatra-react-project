class Cocktail < ActiveRecord::Base
  has_many :cocktails_ingredients
  has_many :ingredients, through: :cocktails_ingredients

  validates :name, presence: true
end





