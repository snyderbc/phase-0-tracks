#Encyrpt Method

#Define a method "encrypt"
  #- Take a string as input
  #- For the output, advance each character in the string by one character

def encrypt(str)
  index = 0
    while index < str.length
      str[index] = str[index].next
      index += 1
    end
  puts str
end

encrypt("a b c")

Take a string
Determine the index of each letter
Subtract one from the position of each letter

def decrypt(str)
  index=0
    while index < str.length
      str[index] = str
      str[index]