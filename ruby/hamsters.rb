puts "Hamster's name?"
name = gets.chomp
p name

puts "How loud on scale of 1 to 10?"
volume = gets.chomp.to_i
p volume

puts "Fur color?"
fur_color = gets.chomp
p fur_color

puts "Is the hampster a good candidate (y/n)?"
candidate = gets.chomp
p candidate

puts "Estimated age?"
age = gets.chomp

if age == ""
  age = nil
else
  age = age.to_i
end

p age