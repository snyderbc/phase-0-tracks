class Santa

  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    bad_reindeer_location = @reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.delete_at(bad_reindeer_location)
    @reindeer_ranking << reindeer_name
    @reindeer_ranking
  end

  def about
    puts "Age: #{@age}"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer Ranking: #{@reindeer_ranking}"
  end

end

########DRIVER CODE###############

#Create several instances of Santa class, with diverse genders and ethnicities
# santas = []
# santa_genders = ["genderless", "pangender", "male", "queer", "male"]
# santa_ethnicities = ["hispanic", "white", "black", "native american", "asian"]

# santa_genders.length.times do |i|
#   santas << Santa.new(santa_genders[i], santa_ethnicities[i])
#   end


#Test instance methods on current Santa instances housed in above array

# santas.each do |instance|
#   instance.about
#   instance.speak
#   instance.eat_milk_and_cookies("chocolate chip")
#   instance.get_mad_at("Rudolph")
#   instance.celebrate_birthday
#   instance.about
#   puts "This santa's age is #{instance.age}, and ethnicity is #{instance.ethnicity}"
#   instance.gender = "female"
#   instance.about
#   puts "Now all of the santas are #{instance.gender}, mwahaha"
# end

#Program to build many, many santas

def santa_creator(number_of_santas)
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  number_of_santas.times do
    santa_instance = Santa.new(example_genders.sample, example_ethnicities.  sample)
    p santa_instance.gender
    p santa_instance.age
    p santa_instance.ethnicity
    p santa_instance.reindeer_ranking
    end
end

santa_creator(1000)