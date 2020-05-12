class TicTacToe
	def initialize(board=nil)
		@board = board || Array.new(9, " ")
	end

	WIN_COMBINATIONS = [
  [0, 1, 2],
  [0, 4, 8],
  [0, 3, 6],
  [3, 4, 5],
  [6, 4, 2],
  [1, 4, 7],
  [6, 7, 8],
  [2, 5, 8]
]


	def display_board
		puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
		puts "-----------"
		puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
		puts "-----------"
		puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end

	def input_to_index(input)
	  input.to_i - 1
	end

	def move(index, value="X")
	  @board[index] = value
	end

	def position_taken?(index)
  	if @board[index] == "" || @board[index] == " " || @board[index] == nil
    	false
  	elsif
    	@board[index] == "X" || @board[index] == "O"
    	true
  	else
    	nil
  	end
end

	def valid_move?(index)
  !position_taken?(@board, index) && index.between?(0,8)
end

end
