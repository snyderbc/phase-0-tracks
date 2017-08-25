class Santa

  def initialize(gender, ethnicity)
    puts "Initiaizing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer_name)
    bad_reindeer_location = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.delete_at(bad_reindeer_location)
    @reindeer_ranking << reindeer_name
    p @reindeer_ranking
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
  instance.get_mad_at("Rudolph")
end


