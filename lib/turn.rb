#turn 
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else turn(board)
  end
end

#move.1 => destructive method
def input_to_index(input)
  input.to_i - 1
end

#position_taken & valid_move
def position_taken?(board, index)
 if board[index] == nil || board[index] == ""
    return false
 elsif board[index] == " "
    return false
 elsif board[index] == "X" || board[index] == "O"
    return true
 end
end

def valid_move?(board,index)
  if board[index] == nil || !index.between?(0,8)
    return false 
    elsif !position_taken?(board, index)
    return true 
  end
end

#move.2 => destructive method(altering the array for the duration of the program)
def move(board,position,char = 'X')
  board[position] = char
end 

#display_board
def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------" 
  puts "   |   |   "
  return "A Tic Toc Toe Board"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------" 
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]
display_board(board)









