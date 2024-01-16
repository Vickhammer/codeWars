# Rock Paper Scissors
# Let's play! You have to return which player won! In case of a draw return Draw!.

# Examples(Input1, Input2 --> Output):

# "scissors", "paper" --> "Player 1 won!"
# "scissors", "rock" --> "Player 2 won!"
# "paper", "paper" --> "Draw!"

def rps(p1, p2)
    winning = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
  
    if p1 == p2
      "Draw!"
    elsif winning[p1] == p2
      "Player 1 won!"
    else
      "Player 2 won!"
    end
  
  end