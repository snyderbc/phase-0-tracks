#Take a full name (first and last) - will be input as a string.
user_input = " "
until user_input == "quit"
  puts "Enter a name:"
  user_input = gets.chomp

#Separate the first name from the last name, and swap them

full_name = user_input.split(' ')
#Converts full name to an array
p full_name.class

name_swap = [full_name[1], full_name[0]]
p name_swap

#Identify if any of the characters in the word are a vowel. If they are, advance to the next vowel ('aeiou').

#Converts name back into a string
name_string = name_swap.join(' ')
p name_string.class
p name_string

#Breaks name_string into individual characters, but it is still a string.
p letters = name_string.split('')
p letters.class


#Look through the characters one by one, via an index loop. If the index value returns as a vowel, change it so the value advances by one index.

def next_vowel(letter)
  vowel_position = "aeiou".index(letter)
  if vowel_position.to_i == 4
    next_vowel = "a"
  elsif vowel_position != nil
    next_vowel = "aeiou"[(vowel_position.to_i + 1)]
  else next_vowel = letter
  end
end

letters.map! { |x| next_vowel(x)}
p letters


def next_consonant(letter2)
  lower_letter = letter2.downcase
  consonant_position = "bcdfghjklmnpqrstvwxyz".index(lower_letter)
  if consonant_position.to_i == 20
    next_consonant = "b"
  elsif consonant_position != nil
    next_consonant = "bcdfghjklmnpqrstvwxyz"[(consonant_position.to_i + 1)]
  else next_consonant = lower_letter
  end
end

letters.map! { |x| next_consonant(x)}
p letters

final_output = letters.join('')
separate_names = final_output.split (' ')
p separate_names
p separate_names.class

final_output = separate_names[0].capitalize + " " +separate_names[1].capitalize

p final_output
#Apply the next

#Check each character of the string to see if any of them are in the vowel string. If they are, advance them to the next vowel in the vowel string. gsub?



#Identify if any of the characters in the word are a consonant. If they are, advance to the next consonant ('bcdfghjklmnpqrstvwxyz').
#Return the fake name

#capitalize string

end