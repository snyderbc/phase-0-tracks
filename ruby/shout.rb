module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!" + " :)"
  end

end

####Driver Code

p angry_phrase = Shout.yell_angrily("I'm Angry")
p happy_phrase = Shout.yelling_happily("I'm Happy")
