require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/session'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    # @player_1_points = $player_1.paint_points
    # @player_2_points = $player_2.paint_points
    erb :play
  end

  get '/paint' do
    @player_1 = $player_1
    @player_2 = $player_2
    Session.new.paint(@player_2)
    erb :paint
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
