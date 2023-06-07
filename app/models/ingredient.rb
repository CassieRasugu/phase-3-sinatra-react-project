class Ingredient < ActiveRecord::Base
  belongs_to :cocktail
  has_many :cocktail_ingredients

  validates :name, presence: true
end


