require_relative("./snake.rb")
require_relative("./ladder.rb")
require_relative("./die.rb")
require_relative("./board.rb")


class Player
  attr_accessor :position_on_board, :name
  def initialize(name)
    @name = name
    @position_on_board = 0
  end

  def move(die_roll)
    @position_on_board += die_roll
  end



end