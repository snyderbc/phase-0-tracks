#Encyrpt Method

#Define a method that takes a string as its input
#While the string index is less than the string length
#Take the string, and advance each letter of the string by one based on its index
#Any space character should remain a space


def encrypt(str)
  index = 0
  while index < str.length
    if str[index] == "z"
      str[index] = "a"
    elsif str[index] == " "
      str[index] = " "
    else str[index] = str[index].next
  end
    index += 1
  end
  p str
end

encrypt("abc")
encrypt("zed")


#Decrypt Method

#Define a method that takes a string
#While the index is less than the string length:
  #Give the position of the letter in the alphabet string
  #Find the letter in the alphabet string that is one less than that position
#Display the decrypted code


def decrypt(str)
  index = 0
  while index < str.length
   position = "abcdefghijklmnopqrstuvwxyz".index(str[index])
    if str[index] == " "
      str[index] = " "
    else str[index] = "abcdefghijklmnopqrstuvwxyz"[(position.to_i - 1)]
    end
  index += 1
  end
  p str
end

decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))

#Used p instead of puts so that the return value is not "nil", this allows the nested method call above to work correctly.

#Driver Code
#Ask the secret agent whether or not they would like to decrypt or an encrypt a password
#Continue to ask until they provide a valid input of "encrpyt" or "decrypt"
#Once valid input is received, ask for the password
#If they chose "encrpyt", input the password into the encrpty method
#If they chose "decrypt", input the password into the decrypt method
#Print the result to the screen, and exit

valid_input = false
until valid_input == true
  puts "Would you like to encrypt or decrypt a password?"
    action = gets.chomp
  if action == "encrypt"
    puts "What is the password?"
    str = gets.chomp
    puts "The encrypted version is #{encrypt(str)}"
    valid_input = true
  elsif action == "decrypt"
    puts "What is the password?"
    str = gets.chomp
     puts "The decrypted version is #{decrypt (str)}"
    valid_input = true
  else puts "I didn't understand you."
  end
end
