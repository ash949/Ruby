# 3.2 Ruby: flow control (if else elsif / switch)
# ======================



def if_else_test
  puts "IF_ELSE_ELSIF TEST\n"
  puts "Do you want to win?"
  choice = gets.chomp
  if ( choice.upcase == "YES" )
    puts "you win"
    puts "=================================\n"
  elsif ( choice.upcase == "NO" )
    puts "you lose"
    puts "=================================\n"
  else
    puts "accepted answers are only yes or no....try again\n"
    if_else_test
  end
  
end


def switch_test
  puts "SWITCH TEST"
  puts "Do you want to win?"
  choice = gets.chomp
  case choice.downcase
  when "yes"
    puts "you win"
    puts "=================================\n"
  when "no"
    puts "you lose"
    puts "=================================\n"
  when "maybe"
    puts "you tried....BUT STILL YOU LOSE...try again\n"
    switch_test
  else
    puts "what do you mean???...try again\n"
    switch_test
  end
end

if_else_test
switch_test