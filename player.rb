require_relative("./snake.rb")
require_relative("./ladder.rb")


class Player
  attr_reader :position_on_board
  def initialize(name)
    @name = name
    @position_on_board = 0
  end

  def move(die_roll)
    @position_on_board += die_roll
  end

end