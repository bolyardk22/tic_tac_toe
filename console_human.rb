class Human
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board)
		puts "Make a move"

		move = gets.chomp.to_i
			if spot_open(position) == true
					update = update_move(player, position)
					@board = update
					p @board
					player = change_player(player)		
			else
			puts "Thats not a valid selection" + "\n"	
			end
		end
	end

end