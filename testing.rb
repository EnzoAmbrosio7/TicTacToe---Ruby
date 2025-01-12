#The tab: I will try to do it with the hash
table = ["X","0","0","0","X","0","0","0","X"]
#Using this var to make easier on the move of the table
playerX = 'X'
playerO = 'O'
def showTab(tab)
  puts tab[0] + " | " + tab[1] + " | " + tab[2]
  puts "--+---+--" 
  puts tab[3] + " | " + tab[4] + " | " + tab[5]
  puts "--+---+--" 
  puts tab[6] + " | " + tab[7] + " | " + tab[8]
end

def moving(pos, player, tab)
  pos = pos - 1
  if pos <= -1 or pos >=9
    puts "Invalid move, Player " + player + " Try again: "
    return 1
  else
    if tab[pos] == "0"
      tab[pos] = player
      return 0
    else tab[pos] == "0"
      puts "Invalid move, Player " + player + " Try again: "
      return 1
    end
  end
end

def verifyVictory(tab, player)
  #rows
  if tab[0] and tab[1] and tab[2] == player
    puts "Player " + player + "Wins"
    exit(true)
  elsif tab[3] and tab[4] and tab[5] == player
    puts "Player " + player + "Wins"
    exit(true)
  elsif tab[6] and tab[7] and tab[8] == player
    puts "Player " + player + "Wins"
    exit(true)
  end
  #columns
  if tab[0] and tab[3] and tab[6] == player
    puts "Player " + player + "Wins"
    exit(true)
  elsif tab[1] and tab[4] and tab[7] == player
    puts "Player " + player + "Wins"
    exit(true)
  elsif tab[2] and tab[5] and tab[8] == player
    puts "Player " + player + "Wins"
    exit(true)
  end
  #diagonals
  if tab[0] and tab[4] and tab[8] == player
    puts "Player " + player + "Wins"
    exit(true)
  elsif tab[6] and tab[4] and tab[2] == player
    puts "Player " + player + "Wins"
    exit(true)
  end
end
showTab(table)
verifyVictory(table,playerX)