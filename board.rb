class Board
  attr_reader :squares, :snakes, :ladders, :die

  def initialize()
    @squares = (1..9).to_a
    @snakes = [Snake.new(5,3), Snake.new(8,1)]
    @ladders = [Ladder.new(2, 6)]
    @die = Die.new()
  end

end