#Encyrpt Method

#Define a method that takes a string as its input
#While the string index is less than the string length
#Take the string, and advance each letter of the string by one based on its index
#Any space character should remain a space


def encrypt(str)
  index = 0
  while index < str.length
    str[index] = str[index].next
      if str[index].next == "!"
        str[index] = " "
      end
    index += 1
  end
  puts str
end

encrypt("abc")


