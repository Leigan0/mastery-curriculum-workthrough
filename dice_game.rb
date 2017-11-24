def dice_game

game_count = 0

  while game_count < 1
    player1 = rand(1..6)
    player2 = rand(1..6)
    game_count += 1
      if player1 > player2
        puts 'I win'
      elsif player1 == player2
        puts 'Draw'
      else
        puts 'I lose'
      end
    end
end
