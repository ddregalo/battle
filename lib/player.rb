class Player

  attr_reader :name, :paint_points
  START_POINTS = 100

  def initialize(name, paint_points = START_POINTS )
    @name = name
    @paint_points = paint_points
  end

  def reduce_points
    @paint_points -= 10
  end
  
  def paint(player)
    player.reduce_points
  end
end
