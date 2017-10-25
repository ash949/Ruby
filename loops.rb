# 3.2 Ruby: flow control (loops)
# ======================
puts "times============================="
5.times do
  puts "times testing"
end

puts "while============================="
number = 1
while(number <= 12) do
  puts "#{number} * 5 = #{number * 5}"
  number += 1
end

puts "each=============================="
# (1..12).each do |n|
(1...12).each do |n|
  p "#{n} * 6 = #{n * 6}"
end

puts "for with next/break==============="
retried = false
for i in (1..12)
  if (i == 5) 
    puts "skipped #{i} * 7"
    next
  end
  if (i == 10)
    puts "breaked at #{i} * 7"
    break
  end
  puts "#{i} * 7 = #{i * 7}"
end