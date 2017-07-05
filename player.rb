require_relative("./snake.rb")
require_relative("./ladder.rb")
require_relative("./die.rb")
require_relative("./board.rb")


class Player
  attr_accessor :position_on_board
  def initialize(name)
    @name = name
    @position_on_board = 0
  end

  def move(die_roll)
    @position_on_board += die_roll
    p "Move to" + @position_on_board.to_s
  end



  def have_won?(board_obj)
    return true if @position_on_board== board_obj.squares[-1]
  end

end