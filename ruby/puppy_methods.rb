class Puppy

  def fetch(toy)
    p "I brought back the #{toy}!"
    toy
  end


  def speak(integer)
    response = ""
    integer.times do
      response << "Woof!/n"
    end
    p response
  end

  def roll_over
    p "*roll over*"
  end

  def dog_years(human_years)
    p 7 * human_years
  end

  def sit
    p "*sit*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

lab = Puppy.new
pit_bull = Puppy.new

p lab.fetch("ball") == "I brought back the ball!"

p lab.speak(3) == "Woof!"

p lab.speak(3) == "Woof!/nWoof!/nWoof!/n"

p lab.roll_over == "*roll over*"

p lab.dog_years(2) == 14

p lab.sit == "*sit*"



class Fruit

  def initialize(sound)
    puts sound
  end

  def rots(days)
    days.downto(1) do |count_down|
      puts count_down
    end
    p "Rotten!"
  end

  def grow(name)
    puts name.downcase
    puts name.upcase
  end

end

fruit_array = []

50.times do |num|
  fruit_instance = Fruit.new("crunch")
  fruit_array << fruit_instance
end

p fruit_array

fruit_array.each do |instance|
  instance.rots(2)
  instance.grow("cabbage")
end

