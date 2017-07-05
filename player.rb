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

  def board_state(board_obj)
    for snake in board_obj.snakes
      if (@position_on_board == snake.head_pos)
        @position_on_board = snake.tail_pos
      end
    end

    for ladder in board_obj.ladders
      if (@position_on_board == ladder.bottom_pos)
        @position_on_board = ladder.top_pos
      end
    end
    p "Move to " + @position_on_board.to_s

  end

  def have_won?(board_obj)
    return true if @position_on_board== board_obj.squares[-1]
  end

end