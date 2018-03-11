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

  post '/compliment' do
    Compliment.run($game.opponent_of($game.current_turn))
    if $game.game_over?
      redirect '/game-over'
    else
      redirect '/compliment'
    end
  end

  get '/compliment' do
    @game = $game
    erb :compliment
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
   @game = $game
   erb :game_over
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
