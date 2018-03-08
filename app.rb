require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/session'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $session = Session.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @session = $session
    erb :play
  end

  get '/paint' do
    @session = $session
    @session.paint(@session.player_2)
    erb :paint
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
