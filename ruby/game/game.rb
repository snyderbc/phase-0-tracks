

class WordGame

attr_reader :mystery_word, :guesses, :is_over, :guesses_available, :guessed_word

  def initialize(mystery_word)
    @mystery_word = mystery_word
    @guesses = 0
    @is_over = false
    @guesses_available = mystery_word.length + 3
    @guessed_word = mystery_word.tr("abcdefghijklmnopqrstuvwxyz", "_")
  end


  def letter_check(letter)
    if (mystery_word.include? letter) && (@guessed_word.include? letter) == false
        letter_index = mystery_word.index(letter)
        @guessed_word[letter_index] = letter
        @guesses += 1
        @guessed_word
    end
  end

end


#####DRIVER CODE ##############
