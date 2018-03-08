require 'player'
class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def compliment(player)
    player.receive_love
  end
end
