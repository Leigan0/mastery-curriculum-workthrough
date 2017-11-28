def dice_game

game_count = 0
player1_wins = 0
player2_wins = 0

  until game_count == 3
      player1 = rand(1..6) * 2
      player2 = rand(1..6) * 2
      puts player1
      puts player2
      game_count += 1
        if player1 > player2
          player1_wins += 1
        elsif player1 < player2
          player2_wins += 1
        end
      end

      if player1_wins > player2_wins
        puts "Player 1 wins"
      elsif player1_wins < player2_wins
        puts "Player 2 wins"
      else
        puts "Draw"
    end
end
