class Ingredient < ActiveRecord::Base
  belongs_to :cocktail

  validates :name, presence: true
end

//
