require 'sinatra/base'
require 'sinatra/reloader'
require './lib/date.rb'

class Birthday < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions

  get "/" do
      erb :index
  end

  post "/birthday" do
    session[:name] = params[:name]
    session[:birthday_day] = params[:birthday_day]
    session[:birthday_month] = params[:birthday_month]
    p params
    redirect to('your-birthday')
  end

  get "/your-birthday" do
    @name = session[:name]
    @birthday_day = session[:birthday_day]
    @birthday_month = session[:birthday_month]
    @date = DateCalculator.new(@birthday_day, @birthday_month)
    @date.parse_date
    @date.calc_diff

    erb :your_birthday
  end

  run! if app_file == $0

end
