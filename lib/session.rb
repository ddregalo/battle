class Session

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
    @current_turn = @players.first
  end

  def paint(player)
    opponent_of(player).reduce_points
  end

  def switch_turns
    @current_turn = opponent_of(@current_turn)
  end

  def session_over
    
  end

  private
    def opponent_of(nowplayer)
    opponent = @players.select { |player| nowplayer != player }
    opponent[0]
    end
end
