require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")
require_relative("../game.rb")


class TestGame < MiniTest::Test
  def setup
    @player1 = Player.new("Stacey")
    @board = Board.new()
  end

  def test_player_rolls
    turn_start_pos = @player1.position_on_board()
    array = ((turn_start_pos + 1)..(turn_start_pos + 6)).to_a
    roll_number = @board.die.roll
    @player1.move(roll_number)
    assert_equal(true, array.include?(@player1.position_on_board()))
  end

end