#The tab: 0   1   2   3   4   5   6   7   8  - On input conversion use: -1
table = ["0","0","0","0","0","0","0","0","0"]
#To make a while infinit until a win (I know i don't used it so correct on the code)
victory = false
#Player simbols 
playerX = 'X'
playerO = 'O'

#A method to make easier and presentable of the tic-tac-toe table. Only receiving the table
def showTab(tab)
  puts tab[0] + " | " + tab[1] + " | " + tab[2]
  puts "--+---+--" 
  puts tab[3] + " | " + tab[4] + " | " + tab[5]
  puts "--+---+--" 
  puts tab[6] + " | " + tab[7] + " | " + tab[8]
end

#The method got the pos where the player want to make a move and replaces with his simbol. It also need to receive the table for the correct work
def moving(pos, player, tab)
  pos = pos - 1 #pos
  if pos <= -1 or pos >=9 #incorrect input of the user
    puts "Invalid move, Player " + player + " Try again: "
    return 1 #error state
  else # if the input is correct
    if tab[pos] == "0" # The space where the player wants to play are free
      tab[pos] = player # Replaces with his simbol
      return 0 # Everything work as expected
    elsif tab[pos] == !"0" # The space where the player wants to play are not free
      puts "Invalid move, Player " + player + " Try again please: "
      return 1 #error state
    end
  end

end

def verifyVictory(tab, player)
    # rows
  if (tab[0] == player && tab[1] == player && tab[2] == player) || (tab[3] == player && tab[4] == player && tab[5] == player) || (tab[6] == player && tab[7] == player && tab[8] == player)
    #the condition checks if every row are with the same simbol of the player
    puts "Player " + player + " Wins!"
    return true
  end
   # columns

  if (tab[0] == player && tab[3] == player && tab[6] == player) ||(tab[1] == player && tab[4] == player && tab[7] == player) || (tab[2] == player && tab[5] == player && tab[8] == player)
  #the condition checks if every column are with the same simbol of the player
     puts "Player " + player + " Wins!"
     return true
   end

   # diagonals
  if (tab[0] == player && tab[4] == player && tab[8] == player) ||
      (tab[6] == player && tab[4] == player && tab[2] == player)
  #the condition checks if every diagonal are with the same simbol of the player
     puts "Player " + player + " Wins!"
     return true
  end
end  

#main game
puts "Welcome to the tic-tac-toe Game!"
showTab(table)
while victory == false # An infinit loop until victory equals to true
  puts "X to move: "
  move = gets.chomp().to_i #Transform the input of the player to an int
  if moving(move, playerX, table) == 0 #Return of the line 27
    moving(move, playerX, table) # Make the move
    showTab(table) # Show the table
    verifyVictory(table, playerX) # Verify  if is there is a winner
    
  else # if there a problem on the move
    while moving(move, playerX, table) == 1 # while there is not a valid movement, the player will try again
      move = gets.chomp().to_i 
    end
  end

  move = 0 # restarts the value of the player input
  #################### 
  #Same thing for the player O
  puts "O to move: "
  move = gets.chomp().to_i #Transform the input of the player to an int
  if moving(move, playerO, table) == 0 #Return of the line 27
    moving(move, playerO, table) # Make the move
    showTab(table) #Show the table
    verifyVictory(table, playerO) #Verify if is there a winner
  else # if there a problem on the move
    while moving(move, playerO, table) == 1 # while there is not a valid movement, the player will try again
      move = gets.chomp().to_i
    end
  end


  move = 0 # If the program is not interrupted, it will come back to the start of the loop: Line 64
end