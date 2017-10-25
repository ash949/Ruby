# 3.1 Ruby: variables and methods
# ===============================

def greeting1
  puts "Hello World from a method using puts keyword"
  p "Hello World from a method using p keyword"
end

def greeting2
  puts "enter a name:"
  first = gets
  last = gets.chomp
  puts "Hello my name is " + first + ' ' + last
  puts "Hello my name is " + last + " " + first
end

def add(a, b)
  puts a + b
end

add(4,5)
greeting1
greeting2


