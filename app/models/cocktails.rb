class Cocktail < ActiveRecord::Base
  has_many :ingredients

  validates :name, presence true
end

##retrieving cocktails
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

  def display_name
    "#{name} Cocktail"
  end

  def price_in_usd
    "#{price} USD"
  end

  # Other methods...
end
