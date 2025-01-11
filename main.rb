#The tab: I will try to do it with the hash
table = ["0","0","0","0","0","0","0","0","0"]
#Using this var to make easier on the move of the table
victory = false
playerX = 'X'
playerO = 'O'

def showTab(tab)
  puts tab[0] + " | " + tab[1] + " | " + tab[2]
  puts "--+---+--" 
  puts tab[3] + " | " + tab[4] + " | " + tab[5]
  puts "--+---+--" 
  puts tab[6] + " | " + tab[7] + " | " + tab[8]
end


def jogada(pos, player, tab)
  if tab[pos] == "0"
    tab[pos] = player
    return 0 # It means all goes was expected
  else
    puts "Invalid move"
    return 1 # It means something wasn't expected
  end
end
#jogada(0, playerX, table)
#showTab(table)
puts table[0]

#main game
puts "Welcome to the tic-tac-toe Game!"
showTab(table)
while victory == false
  puts "X to move: "
  move = gets.chomp().to_i
  move = move-1
  if jogada(move,playerX, table) == 0
    jogada(move,playerX, table)
  else
    while jogada(move,playerX, table) == 1
      puts "Invalid move"
      move = gets.chomp().to_i
      move = move-1
    end
  end
    #puts "O to move"
end





