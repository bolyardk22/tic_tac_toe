def update_move(board,player,position)
	board[position.to_i - 1] = player
	board
end

def spot_open(board,position)
	if board[position.to_i - 1] == 'x' || board[position.to_i - 1] == 'o'
		false
	elsif position < 1 || position > 9
		false
	else
		true
	end
end

def set_character()
	
	puts "Player one: Please choose 'x' or 'o.'"
	player_choice = gets.chomp.to_s

	loop do

		if player_choice == 'x'|| player_choice == 'o'
			player_one = player_choice
			break

		else puts "Please enter either 'x' or 'o.'"
		end
	end
	player_choice
end

def change_player(current_player)
	if current_player == 'x'
		new_player = 'o'
	else
		new_player = 'x'
	end
	new_player
end

def set_board
	board = ['1','2','3','4','5','6','7','8','9']
	board
end

def draw_board(board)
	board
	p "#{board[0]} || #{board[1]} || #{board[2]}"
	p "==========="
	p "#{board[3]} || #{board[4]} || #{board[5]}"
	p "==========="
	p "#{board[6]} || #{board[7]} || #{board[8]}"
	puts "\n"
	puts "\n"
end


def win_state(board)
    if board[0] == "x" && board[3] == "x" && board[6] == "x"  || board[0] == "o" && board[3] == "o" && board[6] == "o"
  		p "You Win"
  		true
    elsif board[1] == "x" && board[4] == "x" && board[7] == "x" || board[1] == "o" && board[4] == "o" && board[7] == "o"
        p "You Win"
        true
    elsif board[2] == "x" && board[5] == "x" && board[8] == "x"  || board[2] == "o" && board[5] == "o" && board[8] == "o"
        p "You Win"
      	true
    elsif board[0] == "x" && board[1] == "x" && board[2] == "x"  || board[0] == "o" && board[1] == "o" && board[2] == "o"
        p "You Win"
        true
    elsif board[3] == "x" && board[4] == "x" && board[5] == "x"  || board[3] == "o" && board[4] == "o" && board[5] == "o"
        p "You Win"
        true
    elsif board[6] == "x" && board[7] == "x" && board[8] == "x"  || board[6] == "o" && board[7] == "o" && board[8] == "o"
        p "You Win"
        true
    elsif board[0] == "x" && board[4] == "x" && board[8] == "x"  || board[0] == "o" && board[4] == "o" && board[8] == "o"
        p "You Win"
        true
    elsif board[2] == "x" && board[4] == "x" && board[6] == "x"  || board[2] == "o" && board[4] == "o" && board[6] == "o"
        p "You Win"
        true
    else
        false
    end
end

def test_for_full_board(board)
    if board.all? {|space| space.include?("x") || space.include?("o")}
       	puts "The cat got this one!"
        board_full = true
    else
        board_full = false
    end
end

def game
	board = set_board
	player = set_character
	until win_state(board) == true || test_for_full_board(board) == true
		draw_board(board)
		puts "Player #{player.capitalize}, which space would you like?"
		position = gets.chomp.to_i
			if spot_open(board, position) == true
					update = update_move(board, player, position)
					board = update
					draw_board(board)
					player = change_player(player)		
			else
			puts "Thats not a valid selection" + "\n"	
			end	
	end	
end

#game