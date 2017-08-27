# String Encryptor
# Input : string (mystery word)
# Take a string, and replace every character of that string with an underscore
# Output: string (of underscores)

# Letter Checker
# Input: letter (string)
# Take a letter, and see if it is in a string (mystery word)
#   If the input letter was not already in the string, add one to the guess count and add the letter to the guessed word string
#   If the letter was already in the string, do nothing
# If adding that letter makes the mystery word equal to the guessed word, the game has now been won
# Output (guessed word)


# Guesses Available Determinator
# Input: string (mystery word)
# Takes a string, determines how long it is, and adds 5 to that length
# Output: integer (number of guesses available)

require_relative 'game'

describe WordGame do
  it "takes a string, and replaces each character in the string with an underscore" do
  end

  it "checks to see if a letter is in a string. If it is, it adds that letter to another string, and increases the guess count by one. It is is and now the to strings are equal, it sets the game to won" do
  end

  it "takes a string, determines how long it is, and adds 5 to that length" do
  end

end