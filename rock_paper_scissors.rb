$winner = ""

def run_game
  player1 = ["rock", "paper", "scissors"].sample
  puts "\n\nchoose with number (1.rock, 2.papers, 3.scissors 4.exit): "
  player2 = gets.chomp

  case player2
  when "1"
    player2 = "rock"
  when "2"
    player2 = "paper"
  when "3"
    player2 = "scissors"
  when "4"
    return
  else
    run_game
    return
  end
  if ( player1 == player2 )
    $winner = "Tied"
  elsif (  player1 == "rock" && player2 == "scissors" || player1 == "paper" && player2 == "rock" || player1 == "scissors" && player2 == "paper")
    $winner = "computer wins"
  else
    $winner = "you win"
  end
  puts "/-----------------------------------------------------------------\\"
  puts " Computer picked #{player1} and you picked #{player2}, #{$winner}"
  puts "\\-----------------------------------------------------------------/\n\n"
  run_game
  return
end

run_game