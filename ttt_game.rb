def update_move(board,player,position)
	board[position.to_i - 1] = player
	board
end

def spot_open(board,position)
	if board[position.to_i - 1] == 'x' || board[position.to_i - 1] == 'o'
		false
	elsif position < 1 || position > 9
		false
	end

end