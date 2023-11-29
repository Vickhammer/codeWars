# DESCRIPTION:
# If we were to set up a Tic-Tac-Toe game, we would want to know whether the board's current state is solved, wouldn't we? Our goal is to create a function that will check that for us!

# Assume that the board comes in the form of a 3x3 array, where the value is 0 if a spot is empty, 1 if it is an "X", or 2 if it is an "O", like so:

# [[0, 0, 1],
#  [0, 1, 2],
#  [2, 1, 0]]
# We want our function to return:

# -1 if the board is not yet finished AND no one has won yet (there are empty spots),
# 1 if "X" won,
# 2 if "O" won,
# 0 if it's a cat's game (i.e. a draw).
# You may assume that the board passed in is valid in the context of a game of Tic-Tac-Toe.

def is_solved(board)
 
    #check horizontally
    board.each do |row|
      return 1 if row.all?(1)
      return 2 if row.all?(2)
    end
  
    #check vertically 
    win = []
    (0..2).each do |i|
      (0..2).each do |j|
          if board[j][i] == 1
            win << 1
          elsif board[j][i] == 2
            win << 2
          else
            win << 0
          end
      end
      if win.all?{|el| el == 1} 
        return 1 
      elsif win.all?{|el| el == 2}
        return 2 
      else 
        win = []
      end
    end
    
    #check diagnoally
    win = []
    2.times do 
      (0..2).each do |i|
        if board[i][i] == 1
              win << 1
        elsif board[i][i] == 2
              win << 2
        else 
          win << 0
        end
      end
      if win.all?{|el| el == 1}
        return 1 
      elsif win.all?{|el| el == 2}
        return 2 
      else 
        board.map!{|el| el.reverse}
        win = []
      end
    end
  
    #check if unfinished or tie
    if board.flatten.include?(0)
      return -1 
    else 
      return 0
    end
    
  end
      
    