#Create a hash to store all of their input

client_details = {}

#Ask the client multiple questions (name, age, # of children, decor theme, etc.) and gather their responses. Be sure to use a mix of string, integer, and boolean data.

# Convert any user input to the appropriate data type

puts "What is your name?"
client_details[:name] = gets.chomp

puts "What is your age?"
client_details[:age] = gets.chomp.to_i

puts "How many children do you have?"
client_details[:children] = gets.chomp.to_i

puts "What decor theme do you prefer?"
client_details[:decor] = gets.chomp

puts "Do you like the color red? (y/n)"
client_details[:red] = gets.chomp

if client_details[:red] == "y"
  client_details[:red] = true
else
  client_details[:red] = false
end

#Print the hash once all questions are complete

p client_details

#Ask the user if they have any changes

puts "Are there any fields you would like to change?"
changes = gets.chomp
#If user inputs "none", skip it

if changes == "none"
  puts "Okay great, thanks!"
elsif changes == "name"
  puts "What would you like to update this to?"
  client_details[:name] = gets.chomp
else
  puts "I didn't understand you."
end

#recognize and match the key name

#If user inputs a key name, ask for a new value and update the corresponding key

#Print the last version of the hash, and exit the program

p client_details