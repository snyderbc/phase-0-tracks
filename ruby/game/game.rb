

class WordGame

attr_reader :mystery_word, :guesses, :guesses_available, :guessed_word, :guesses_remaining

  def initialize(mystery_word)
    @mystery_word = mystery_word
    @guesses = 0
    @guesses_available = mystery_word.length + 3
    @guessed_word = mystery_word.tr("abcdefghijklmnopqrstuvwxyz", "_")
  end


  def letter_check(letter)
    if (mystery_word.include? letter) && (@guessed_word.include? letter) == false
        letter_index = mystery_word.index(letter)
        @guessed_word[letter_index] = letter
        @guesses += 1
        p @guessed_word
    elsif (mystery_word.include? letter)
        letter_index = mystery_word.index(letter)
        @guessed_word[letter_index] = letter
        p @guessed_word
    else
      @guesses += 1
      @guesses_remaining = @guesses_available - @guesses
      puts "Close, but not cigar. You've got #{guesses_remaining} guesses remaining."
    end
  end

end


#####DRIVER CODE ##############

# Get a word from user 1 (mystery word)
# Then, allow user 2 to input a letter until he either spells out the mystery word or runs out of guesses.
# IF he guesses the mystery word before running out of guesses, display a congratulatory message.
# OTHERWISE Taunt him mercilessly.

user_guesses = []

puts "Welcome to the Word Game! Type a word and hit 'enter', and we'll see if your friend is smart enough to guess it:"
require 'io/console'
user1_raw = STDIN.noecho(&:gets)
user1_input = user1_raw.chomp.to_s
wordgame = WordGame.new(user1_input)

puts "Thanks! Now let your friend guess a letter, one at a time. Choose wisely - you only get #{wordgame.guesses_available} guesses!"

user_guesses = []

until (wordgame.mystery_word == wordgame.guessed_word) || (wordgame.guesses == wordgame.guesses_available)
      puts "Enter a letter to make a guess:"
      user_guess = gets.chomp
      user_guesses << user_guess
        if user_guesses.count(user_guess) > 1
        puts "You already guessed that! Maybe you    should try something else?"
        else wordgame.letter_check(user_guess)
        end
end

if (wordgame.mystery_word) == (wordgame.guessed_word)
  puts "Nicely done! You're one smart cookie!"
else puts "Wow...That's embarassing. The correct answer was '#{wordgame.mystery_word}'."
end

