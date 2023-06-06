class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/cocktails' do
  end
  get '/drinks' do
  end
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end

