class CocktailsController < ApplicationController
  get '/cocktails' do
    cocktails = Cocktail.all
    cocktails.to_json
  end
end
