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


def decrypt(str_2)
  index = 0
  while index < str_2.length
   position = "abcdefghijklmnopqrstuvwxyz".index(str_2[index])
    if str_2[index] == " "
      str_2[index] = " "
    else str_2[index] = "abcdefghijklmnopqrstuvwxyz"[(position.to_i - 1)]
    end
  index += 1
  end
  p str_2
end

decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))

#Used p instead of puts so that the return value is not "nil", this allows the nested method call above to work correctly.