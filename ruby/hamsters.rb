puts "What is your hamster's name?"
name = gets.chomp
p "Hamster Name: #{name}"

puts "How loud is your hamster, on a scale of 1 to 10?"
volume = gets.chomp.to_i
puts "Hamster Volume Level (1-10): #{volume}"

puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Hamster Fur Color: #{fur_color}"

puts "Is the hampster a good candidate for adoption (y/n)?"
adoption = gets.chomp
puts "Hamster Adoptable? #{adoption}"

puts "What is the hamster's estimated age?"
age = gets.chomp

if age == ""
  age = nil
else
  age = age.to_f
end

puts "Hamster age: #{age}"