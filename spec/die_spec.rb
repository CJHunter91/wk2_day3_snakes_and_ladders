require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")

class TestDie < MiniTest::Test
  def setup
    @die = Die.new()
  end

  def test_numbers_on_die
    assert_equal(true, (1..6).to_a.include?(@die.roll))
  end
end