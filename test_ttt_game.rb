require "minitest/autorun"
require_relative "ttt_game.rb"

class Ttt_tests <Minitest::Test
	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_first_spot
    	board = ['1','2','3','4','5','6','7','8','9']
        assert_equal(['x','2','3','4','5','6','7','8','9'], update_move(board, 'x', '1'))
    end

    def test_second_spot
        board = ['x','2','3','4','5','6','7','8','9']
        assert_equal(['x','2','3','4','5','6','o','8','9'], update_move(board, 'o', '7'))
    end

    def test_spot_legal
        board = ['x','2','3','4','5','6','o','8','9']
        position = 8
        assert_equal(true, spot_open(board, position))
	end

	def test_spot_illegal
		board = ['x','2','3','4','5','6','o','8','9']
		position = 1
		assert_equal(false, spot_open(board,position))
	end

	def test_change_player_to_o
		current_player = 'x'
		assert_equal('o', change_player(current_player))
	end

	def test_change_player_to_x
		current_player = 'o'
		assert_equal('x', change_player(current_player))
	end

	def test_board_array
		assert_equal(Array,set_board.class)
	end

	def test_win_state_true
		board = ['x','x','x','4','5','6','7','8','9']
		assert_equal(true,win_state(board))
	end

	def test_win_state_false
		board = ['x','x','3','4','5','6','7','8','9']
		assert_equal(false,win_state(board))
	end
end