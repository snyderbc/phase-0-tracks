#Ask the client multiple questions (name, age, # of children, decor theme, etc.) and gather their responses. Be sure to use a mix of string, integer, and boolean data.

# Convert any user input to the appropriate data type

puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "How many children do you have?"
children = gets.chomp.to_i

puts "What decor theme do you prefer?"
decor_theme = gets.chomp

puts "Do you like the color red? (y/n)"
red = gets.chomp

if red = "y"
  red = true
else
  red = false
end



#Create a hash to store all of their input


#Print the hash once all questions are complete


