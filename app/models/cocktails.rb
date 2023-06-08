class Cocktail < ActiveRecord::Base
  has_many :cocktails_ingredients
  has_many :ingredients, through: :cocktails_ingredients
  has_many :direct_ingredients, class_name: 'Ingredient'

  validates :name, presence: true
end





