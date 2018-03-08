class Session

  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1
  end

  def paint(player)
    player.reduce_points
  end

  def switch_turns
    if @turn == @player_1
      @turn = @player_2
    else
      @turn = @player_1
    end
  end
end
