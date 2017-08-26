###ORIGINAL SHOUT MODULE - NO MIXIN#####

# module Shout

  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yelling_happily(words)
  #   words.upcase + "!!!" + " :)"
  # end

# end

# #Driver Code

# p angry_phrase = Shout.yell_angrily("I'm Angry")
# p happy_phrase = Shout.yelling_happily("I'm Happy")



###MIXIN VERSION OF SHOUT MODULE######

#Create Shout module as a mixin
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words.upcase + "!!!" + " :)"
  end
end

#Create two classes and include Shout module

class President
  include Shout
end

class Tears_for_Fears
  include Shout
end


####Driver Code

trump = President.new
p trump.yell_angrily("Fake news")
p trump.yelling_happily("Twitter")

roland_orzabal = Tears_for_Fears.new
p roland_orzabal.yell_angrily("Shout - Shout - Let it all out")
p roland_orzabal.yelling_happily("Everybody wants to rule the world")
