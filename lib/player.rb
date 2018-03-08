class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :heart_points

  def initialize(name, heart_points = DEFAULT_HIT_POINTS)
    @name = name
    @heart_points = heart_points
  end

  def compliment(player)
    player.receive_love
  end

  def receive_love
    @heart_points -= 10
  end
end
