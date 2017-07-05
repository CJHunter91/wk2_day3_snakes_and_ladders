require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")

class TestBoard < MiniTest::Test
  def setup
    # @snake1 = Snake.new(8,1)
    # @snake2 = Snake.new(5,3)
    # @snakes = [@snake1, @snake2]
    @board = Board.new()
  end

  def test_board_squares()
    assert_equal(9, @board.squares.size)
  end

  def test_snakes_on_board
    assert_equal(2, @board.snakes.count)
  end
  def test_ladders_on_board
    assert_equal(1, @board.ladders.count)
  end
end