class Ingredient < ActiveRecord::Base
  has_many :ingredients
  has_many :cocktail_ingredients
  has_many :recipe_ingredients, through: :cocktail_ingredients, source: :ingredient

  validates :name, presence: true
end


