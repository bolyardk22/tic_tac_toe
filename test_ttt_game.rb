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
        assert_equal(true, spot_open(board, position))
	end
end