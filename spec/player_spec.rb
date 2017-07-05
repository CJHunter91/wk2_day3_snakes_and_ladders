require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")

class TestPlayer < MiniTest::Test
  def setup
    @player1 = Player.new("Stacey")
  end

  def test_start_player_position
    assert_equal(0, @player1.position_on_board)
  end 

  def test_move_player
    assert_equal(5, @player1.move(5))
  end

  def test_go_to
    assert_equal(9, @player1.position_on_board = 9)
  end
end