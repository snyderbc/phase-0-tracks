puts "Hamster's name?"
name = gets.chomp

puts "How loud on scale of 1 to 10?"
volume = gets.chomp

puts "Fur color?"
fur_color = gets.chomp

puts "Is the hampster a good candidate (y/n)?"
candidate = gets.chomp


puts "Estimated age?"
age = gets.chomp

if age == ""
  age = nil
else
  age = age
end
