class Session

  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2, turn = player_1)
    @player_1 = player_1
    @player_2 = player_2
    @turn = turn
  end

  def paint(player)
    player.reduce_points
    @turn = player
  end
end
