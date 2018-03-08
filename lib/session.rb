class Session

  # def initialize(player_1, player_2)
  #   @player_1 = player_1
  #   @player_2 = player_2
  # end

  def paint(player)
    player.reduce_points
  end
end
