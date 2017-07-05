require('minitest/autorun')
require_relative("../snake.rb")
require_relative("../player.rb")
require_relative("../die.rb")
require_relative("../ladder.rb")
require_relative("../board.rb")

class TestBoard < MiniTest::Test
  def setup
    @board = Board.new()
    @player1 = Player.new("Stacey")
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

  def test_snake_forfeit_board_state
    @player1.position_on_board = 5
    @player1.board_state(@board)
    check_player = @player1.position_on_board
    assert_equal(3, check_player)

  end

  def test_ladder_bonus_board_state
    @player1.position_on_board = 2
    @player1.board_state(@board)
    check_player = @player1.position_on_board
    assert_equal(6, check_player)

  end

  def test_win__win
    @player1.position_on_board = 9
    assert_equal(true, @player1.have_won?(@board))
  end
end