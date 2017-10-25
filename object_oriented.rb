class Pet
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
    puts "NOM NOM NOM I like " + food.downcase 
  end

  def hungry?
    if ( @hungry )
      puts "I am hungry"
    else
      puts "I am full"
    end
    return @hungry
  end

  def self.test(pet)
    puts "#{pet.name} is a #{pet.class}"
    puts "is #{pet.name} a pet?: #{pet.is_a?(Pet)}"
    puts "can it make some noise?"
    pet.make_noise
    puts "===================================\n\n"
  end
end

class Cat < Pet
  def make_noise
    puts "meow"
  end
end

class Dog < Pet
  def make_noise
    puts "woof"
  end
end

class Duck < Pet
  def make_noise
    puts "wack"
  end
end

cat = Cat.new('white', 'arabian?')
cat.name = 'kitty'
Pet.test(cat)

dog = Dog.new('brown', 'japanese')
dog.name = 'doggy'
Pet.test(dog)

duck = Duck.new('black', 'chinese')
duck.name = 'ducky'
Pet.test(duck)


puts "\n\nmy cats name is: \n#{cat.name}"
