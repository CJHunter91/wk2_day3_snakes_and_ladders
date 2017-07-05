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
  end

  def board_state(board_obj)
    for snake in board_obj.snakes
      if (@position_on_board == snake.head_pos)
        @position_on_board = snake.tail_pos
      end
    end
  end

end