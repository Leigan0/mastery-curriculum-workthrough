#The user starts by facing forward. They can move right, left, or forward. If
#they move right, they die (there's a goblin). If they move left,
#they die (there's a werewolf). If they move forward, they live.
#They have to do this twice to win.

#Specifications
#The user sees a request asking them to enter the direction they wish to move
#The user enters their direction
#If the the user chooses right, they die - the program displays a message
#explaining there is a goblin
#If the user chooses left they die - the program displays a message explaining
#there is a werewolf
#If the user chooses forward the program displays a message asking them to pick
# a direction
#To win the game the user must select forward twice

#Suggested specification
#
# The user is told they're facing forward and can type 'forward', 'left', or 'right'.
# If the user enters 'right', they die (goblin).
# If the user enters 'left', they die (werewolf).
# If the user enters 'forward', they're told they live, and can move again.
# If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 1 again.
# If the user enters 'right', they die (goblin).
# If the user enters 'left', they die (werewolf).
# If the user enters 'forward', they're told they won and the game exits.
# If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 4 again.

next_move = ""
forward_count = 0
alive = true

while alive == true

until next_move == "left" || next_move == "right" || next_move == "forward"
  puts "You are facing forward, you must choose your next move!"
  puts "Do you want to go left, right or forward?!?!?"
  next_move = gets.chomp.downcase
end

  if next_move == "right"
    puts "You have been attacked by a Goblin, YOU DIE!!!"
    alive = false
  elsif next_move == "left"
    puts "You have been eaten by Werewolf, YOU DIE!!!"
    alive = false
  elsif next_move == "forward" && forward_count == 1
    puts "You have won!"
    exit
  else
    puts "You live."
    forward_count += 1
    next_move = ''
  end
end
