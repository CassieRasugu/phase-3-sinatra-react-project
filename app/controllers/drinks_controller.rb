class DrinksController < ApplicationController
  get '/drinks' do
    drinks = Drinks.all
    drinks.to_json
  end
end
