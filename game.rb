require_relative("./board.rb")
require_relative("./player.rb")

board_obj = Board.new()
player = Player.new("Stacey")

# while !player.have_won?(board) || player.position_on_board > 9 
#   play = gets.chomp
#   if play == "q" || play == "quit"
#     break
#   end
#   if play == "roll"
#     player.move(board.die.roll)
#     player.board_state(board)
#   end
# end

def board_state(board_obj)
  for snake in board_obj.snakes
    if (player.position_on_board == snake.head_pos)
      player.position_on_board = snake.tail_pos
    end
  end

  for ladder in board_obj.ladders
    if (player.position_on_board == ladder.bottom_pos)
      player.position_on_board = ladder.top_pos
    end
  end

end