require 'sinatra/base'
require 'sinatra/activerecord'


class ApplicationController < Sinatra::Base
  configure do
    set :views, 'views'
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, 'your_session_secret'
  end

  # Root route
  get '/' do
    { message: 'Welcome to your API!' }.to_json
  end

  # Cocktails index route
  get '/cocktails' do
    cocktails = Cocktail.all
    cocktails.to_json
  end

  # Create a new cocktail
  post '/cocktails' do
    cocktail = Cocktail.create(
      name: params[:name],
      description: params[:description],
      image: params[:image]
    )
    cocktail.to_json
  end

  # Get a specific cocktail
  get '/cocktails/:id' do
    cocktail = Cocktail.find(params[:id])
    cocktail.to_json
  end

  # Update a specific cocktail
  patch '/cocktails/:id' do
    cocktail = Cocktail.find(params[:id])
    cocktail.update(
      name: params[:name],
      description: params[:description],
      image: params[:image]
    )
    cocktail.to_json
  end

  # Delete a specific cocktail
  delete '/cocktails/:id' do
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    { message: 'Cocktail deleted successfully' }.to_json
  end

  # Ingredients index route
  get '/ingredients' do
    ingredients = Ingredient.all
    ingredients.to_json
  end

  # Alcoholic drinks index route
  get '/alcoholic_drinks' do
    alcoholic_drinks = AlcoholicDrink.all
    alcoholic_drinks.to_json
  end

 # CocktailsIngredients index route
 get '/cocktails_ingredients' do
  cocktails_ingredients = CocktailIngredient.all
  cocktails_ingredients.to_json
end

  # Create a new cocktail ingredient
  post '/cocktails_ingredients' do
    cocktail_ingredient = CocktailIngredient.create(
      cocktail_id: params[:cocktail_id],
      ingredient_id: params[:ingredient_id]
    )
    cocktail_ingredient.to_json
  end

  # Delete a specific cocktail ingredient
  delete '/cocktails_ingredients/:id' do
    cocktail_ingredient = CocktailIngredient.find(params[:id])
    cocktail_ingredient.destroy
    { message: 'Cocktail ingredient deleted successfully' }.to_json
  end


  not_found do
    { error: 'Route not found' }.to_json
  end
end
