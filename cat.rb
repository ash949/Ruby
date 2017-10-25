class Cat
  attr_reader :color, :breed
  attr_accessor :name
  def initialize(color, breed)
    @color = color
    @breed = breed
    @name = ''
    @hungry = true
  end

  def feed(food)
    if ( !@hungry )
      hungry?
      return
    end
    @hungry = false
    case food
    when "fish"
      puts "NOM NOM NOM"
    when "chicken"
      puts "NOM NOM NOM"
    when "milk"
      puts "GUL GUL GUL"
    else
      puts "eww...I want fish, chicken or milk...NOW"
      @hungry = true
    end
  end

  def make_noise
    puts "meow"
  end

  def hungry?
    if ( @hungry )
      puts "I am hungry"
    else
      puts "I am full"
    end
    return @hungry
  end
end

cat = Cat.new('red', 'arabian?')
cat.name = 'kitty'

puts "\n\nmy cats name is: \n#{cat.name}"
puts "===================================\n\n"
puts "Is my cat hungry?"
cat.hungry?
puts "===================================\n\n"
puts "Here have some cheese"
cat.feed("cheese")
puts "===================================\n\n"
puts "Ok, Ok...Here have some tuna"
cat.feed("fish")
puts "===================================\n\n"
puts "Is my cat hungry?"
cat.hungry?
puts "===================================\n\n"
puts "can it make some noise?\n\n"

puts "---- {{  THE END }}  ----\n\n"
cat.make_noise