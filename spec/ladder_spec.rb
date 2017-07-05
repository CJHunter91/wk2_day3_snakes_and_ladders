require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")

class TestLadder < MiniTest::Test
    def setup
      @Ladder1 = Ladder.new(5, 8)
    end

    def test_Ladder_top_position
      assert_equal(8, @Ladder1.top_pos)
    end

    def test_Ladder_bottom_position
      assert_equal(5, @Ladder1.bottom_pos)
    end
  end