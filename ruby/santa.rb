class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def initialize(gender, ethnicity)
    puts "Initiaizing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

end


########DRIVER CODE###############

#Create several instances of Santa class, with diverse genders and ethnicities
santas = []
santa_genders = ["genderless", "pangender", "female", "queer", "male"]
santa_ethnicities = ["hispanic", "white", "black", "native american", "asian"]

santa_genders.length.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
  end

#Test instance methods on current Santa instances housed in above array

santas.each do |instance|
  instance.speak
  instance.eat_milk_and_cookies("chocolate chip")
end

