#Take a full name (first and last) - will be input as a string.

full_name = "Felicia Torres"

#Separate the first name from the last name, and swap them

p full_name = "Felicia Torres".split(' ')
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
p name_string.chars
p name_string.class


#Look through the characters one by one, via an index loop. If the index value returns as a vowel, change it so the value advances by one index.



def next_vowel(vowel)
  vowel_position = "aeiou".index(vowel)
  next_vowel = "aeiou"[(vowel_position.to_i + 1)]
end

p next_vowel("a")
#Check each character of the string to see if any of them are in the vowel string. If they are, advance them to the next vowel in the vowel string. gsub?



#Identify if any of the characters in the word are a consonant. If they are, advance to the next consonant ('bcdfghjklmnpqrstvwxyz').
#Return the fake name

#capitalize string