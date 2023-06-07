class Drink < ActiveRecord::Base
  has_many :drink_ingredients
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
