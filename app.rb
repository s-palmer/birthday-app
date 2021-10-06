require 'sinatra'
require 'sinatra/reloader'

# class Birthday < Sinatra::Base
#   configure :development do
#     register Sinatra::Reloader
#   end

enable :sessions

get "/" do
    erb :index
end

post "/birthday" do
  session[:name] = params[:name]
  session[:birthday_day] = params[:birthday_day]
  session[:birthday_month] = params[:birthday_month]
  redirect to('your-birthday')
end

get "/your-birthday" do
  @name = session[:name]
  @birthday_day = session[:birthday_day]
  @birthday_month = session[:birthday_month]

  erb :your_birthday
end

