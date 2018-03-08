require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1= $player1
    @player2= $player2
    erb :play
  end

  get '/compliment' do
    @player1= $player1
    @player2= $player2
    Game.new.compliment(@player2)
    erb :compliment
end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
