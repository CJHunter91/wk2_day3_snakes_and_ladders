require_relative("./board.rb")
require_relative("./player.rb")




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
class Game
  attr_reader :player, :board_obj
  def initialize()
    puts "Enter player 1's name"
    @player = Player.new(gets.chomp)
    puts "Type roll to play"
    @board_obj = Board.new()
  end

  def snake_or_ladder()
    for snake in @board_obj.snakes
      if (@player.position_on_board == snake.head_pos)
        @player.position_on_board = snake.tail_pos
        puts "Oh no you go down the snake. "
        puts @player.name + "moved to " + @player.position_on_board.to_s
      end
    end

    for ladder in @board_obj.ladders
      if (@player.position_on_board == ladder.bottom_pos)
        @player.position_on_board = ladder.top_pos
        puts "Yay you go up the ladder."
        player_pos_str
      end
    end
  end

  def player_roll_and_move
    @player.move(@board_obj.die.roll)
    snake_or_ladder
    player_pos_str
  end

  def player_pos_str()
    puts @player.name + " moved to square " + @player.position_on_board.to_s
  end

  def have_won?()
    return true if @player.position_on_board == @board_obj.squares[-1]
  end

  def start()
    while !have_won?() 
      puts "#{@player.name}'s turn to play"
      play = gets.chomp
      if play == "q" || play == "quit"
        break
      elsif play == "roll"
        player_roll_and_move
      else 
        puts "You need to get the exact roll to win"
      end
    end
    puts "#{@player.name} Wins!!!"
  end

end

game = Game.new()
game.start()