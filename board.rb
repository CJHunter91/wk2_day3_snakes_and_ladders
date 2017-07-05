class Board
  attr_reader :squares, :snakes

  def initialize(squares)
    @squares = squares
    @snakes = [Snake.new(5,3), Snake.new(8,1)]
  end

end