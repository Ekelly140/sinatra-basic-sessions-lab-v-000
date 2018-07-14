require_relative 'config/environment'
configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    session["name"] = "Eric"
    @session = session
    erb :index
  end

  post '/' do
    @item = Item.new(params[:item])
  end

end
