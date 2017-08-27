# Attributes:

# Start with a word (mystery word) – this will be taken from the first user
# Start with no guesses made yet
# Start with a state that indicates they haven’t won yet
# Start with a blank word that is made up of the # of underscores equivalent to the length of the inputted word(guessed word)
# Start with a guesses available variable that takes the inputted word length and adds 3


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
  let(:wordgame) {WordGame.new("unicorn")}

    it "stores the first users input given on   initiaization" do
    expect(wordgame.mystery_word).to eq "unicorn"
    end

    it "stores the guess number as zero on   initialization" do
    expect(wordgame.guesses).to eq 0
    end

    it "stores the game is over variable to false on initialization" do
    expect(wordgame.is_over).to eq false
    end

    it "stores guesses available as the mystery word length plus 3 on initiation" do
    expect(wordgame.guesses_available).to eq 10
    end

    it "takes the string provided at initalization, and replaces each character in the string with an underscore" do
    expect(wordgame.guessed_word).to eq ("_______")
    end

  it "checks to see if a letter is in a string. If it is, it adds that letter to another string, and increases the guess count by one. If it is and now the two strings are equal, it sets the game to won" do
  expect(wordgame.letter_check("c")). to eq ("___c___")
  end

end
