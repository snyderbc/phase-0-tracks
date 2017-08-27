

class WordGame

attr_reader :mystery_word, :guesses, :is_over, :guesses_available, :guessed_word

  def initialize(mystery_word)
    @mystery_word = mystery_word
    @guesses = 0
    @is_over = false
    @guesses_available = mystery_word.length + 3
    @guessed_word = mystery_word.tr("abcdefghijklmnopqrstuvwxyz", "_")
  end

# Letter Checker
# Input: letter (string)
# Take a letter, and see if it is in a string (mystery word)
#   If the input letter was not already in the string, add one to the guess count and add the letter to the guessed word string
#   If the letter was already in the string, do nothing
# If adding that letter makes the mystery word equal to the guessed word, the game has now been won
# Output (guessed word)

  # def letter_check(letter)
  #   if mystery_word.include? letter
  #     @guesses += 1
  #     letter_index = mystery_word.index(letter)
  #     @guessed_word[letter_index] = letter
  #     @guessed_word
  #   end
  # end
end


#&& guessed_word.  include? letter == false