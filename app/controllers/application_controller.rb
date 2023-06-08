require 'sinatra/base'
require 'sinatra/activerecord'

# Load models
require_relative 'models/cocktail'
require_relative 'models/ingredient'
require_relative 'models/alcoholic_drink'
require_relative 'models/order'

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

  # Orders index route
  get '/orders' do
    orders = Order.all
    orders.to_json
  end

  not_found do
    { error: 'Route not found' }.to_json
  end
end
