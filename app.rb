require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/compliment'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/compliment' do
    @game = $game
    Compliment.run(@game.opponent_of(@game.current_turn))
    erb :compliment
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
