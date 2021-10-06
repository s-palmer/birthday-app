require 'sinatra'
require 'sinatra/reloader'

# class Birthday < Sinatra::Base
#   configure :development do
#     register Sinatra::Reloader
#   end

get "/" do
    erb :index
end

post "/birthday" do

  redirect to('your-birthday')
end

get "/your-birthday" do
  
end

