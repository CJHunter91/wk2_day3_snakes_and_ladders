require_relative("./snake.rb")
require_relative("./ladder.rb")
require_relative("./die.rb")
require_relative("./board.rb")
require_relative("./player.rb")

board = Board.new()
player = Player.new("Stacey")

while !player.have_won?(board) || player.position_on_board > 9 
  play = gets.chomp
  if play == "q" || play == "quit"
    break
  end
  if play == "roll"
    player.move(board.die.roll)
    player.board_state(board)
  end
end