class Board
  attr_reader :squares, :snakes, :ladders

  def initialize(squares)
    @squares = squares
    @snakes = [Snake.new(5,3), Snake.new(8,1)]
    @ladders = [Ladder.new(2, 6)]

  end

end