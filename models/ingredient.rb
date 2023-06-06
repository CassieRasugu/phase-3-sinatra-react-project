class Ingredient < ActiveRecord::Base
  belongs_to :cocktail
  has_many :cocktail_ingredients

  validates :name, presence: true
end

  # create new ingredient
  post '/ingredients' do
    data = JSON.parse(request.body.read)
    ingredient = Ingredient.create(data)
    ingredient.to_json
  end

  # retrieve ingrdient
  get '/ingredients' do
    ingredients = Ingredient.all
    ingredients.to_json
  end

  # delete ingredient
  delete '/ingredients/:id' do
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
  end
