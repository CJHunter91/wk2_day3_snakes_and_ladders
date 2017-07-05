require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")
require_relative("../game.rb")


class TestGame < MiniTest::Test
  def setup
    @board = Board.new()
    @game = Game.new()
  end

  def test_player_rolls
    turn_start_pos = @game.player.position_on_board()
    array = ((turn_start_pos + 1)..(turn_start_pos + 6)).to_a
    roll_number = @board.die.roll
    @game.player.move(roll_number)
    assert_equal(true, array.include?(@game.player.position_on_board()))
  end

  def test_snake_forfeit_snake_or_ladder
    @game.player.position_on_board = 5
    @game.snake_or_ladder(@board)
    check_player = @game.player.position_on_board
    assert_equal(3, check_player)

  end

  def test_ladder_bonus_snake_or_ladder
    @game.player.position_on_board = 2
    @game.snake_or_ladder(@board)
    check_player = @game.player.position_on_board
    assert_equal(6, check_player)

  end
  
  def test_win__win
    @game.player.position_on_board = 9
    assert_equal(true, @game.player.have_won?(@board))
  end

end