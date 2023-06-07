class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

    #retrieving cocktails
get '/cocktails' do
  cocktails = Cocktail.all
  cocktails.to_json
end

#creating a new cocktail
post '/cocktails' do
  data = JSON.parse(request.body.read)
  cocktail = Cocktail.create(data)
  cocktail.to_json
end

#update (like button prolly ) on a specific cocktail
put '/cocktails/:id' do
  data = JSON.parse(request.body.read)
  cocktail = Cocktail.find(params[:id])
  cocktail.update(data)
  cocktail.to_json
end

#delete a specific cocktail
delete '/cocktails/:id' do
  cocktail = Cocktail.find(params[:id])
  cocktail.destroy
end
get '/cocktails' do
  cocktails = Cocktail.all
  cocktails.to_json
end
get '/drinks' do
  drinks = Drinks.all
  drinks.to_json
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

end

