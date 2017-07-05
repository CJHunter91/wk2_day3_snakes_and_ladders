require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")

class TestSnake < MiniTest::Test
  def setup
    @snake1 = Snake.new(8, 1)
  end

  def test_snake_start_position
    assert_equal(8, @snake1.head_pos)
  end
end