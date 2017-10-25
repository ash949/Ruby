$food_menu = ["fries", "burgers", "chicken", "coke", "tuna"]
$orders = []
$client = {name: '', address: ''}

def end_conversation
  if ( $orders.length > 0 )
    puts "/===============================\\"
    puts " Your order has been submitted "
    puts " #{$orders.join(", ")} "
    puts "\\===============================/"
    get_delivery_info
  else
    puts "/======================\\"
    puts "| Bye, Have a nice day |"
    puts "\\======================/"
  end
  return
end

def draw_menu
  puts "\n\n/========\\"
  i = 1
  $food_menu.each do |food|
    puts "#{i}- #{food}"
    i += 1 
  end
  i = 0
  puts "\\========/\n\n"
end

def ask_client
  if ( $orders.length == 0 )
    message = "What would you like to eat? (enter * to stop ordering)"
  elsif ($orders.length == 3)
    end_conversation
    return
  else
    message = "What else?"
  end
  puts message
  add_food(gets.chomp)
end

def add_food(food)
  if( food == "*" )
    end_conversation
    return
  else
    food.downcase!
  end
  if ( ($food_menu).include?(food) )
    $orders.push(food)
    ask_client
  else
    puts "/==========================================\\"
    puts "| Invalid Input: please pick from the menu |"
    puts "\\==========================================/"
    ask_client
  end
end

def get_delivery_info
  puts "deliver to whom: "
  $client[:name] = gets.chomp
  puts "deliver to address: "
  $client[:address] = gets.chomp
  puts "Thanks #{$client[:name]}, your order is underway, have a nice day"
end

draw_menu
ask_client
