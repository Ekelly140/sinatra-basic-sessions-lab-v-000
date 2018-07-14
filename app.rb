require_relative 'config/environment'
configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    @session = session
    binding.pry
    erb :index
  end

  post '/checkout' do

    @item = Item.new(params[:item])
    erb :checkout
  end

end
