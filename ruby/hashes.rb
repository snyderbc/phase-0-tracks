#Create a hash to store all of their input

client_details = {}

#Ask the client multiple questions (name, age, # of children, decor theme, etc.) and gather their responses. Be sure to use a mix of string, integer, and boolean data.

# Convert any user input to the appropriate data type

puts "What is your name?"
client_details["name"] = gets.chomp

puts "What is your age?"
client_details["age"] = gets.chomp.to_i


puts "How many children do you have?"
client_details["children"] = gets.chomp.to_i

puts "What decor theme do you prefer?"
client_details["decor"] = gets.chomp

puts "Do you like the color red? (y/n)"
client_details["red"] = gets.chomp


#Print the hash once all questions are complete

p client_details

