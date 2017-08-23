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

end

lab = Puppy.new
p lab.fetch("ball") == "I brought back the ball!"

p lab.speak(3) == "Woof!"

p lab.speak(3) == "Woof!/nWoof!/nWoof!/n"

p lab.roll_over == "*roll over*"

p lab.dog_years(2) == 14

p lab.sit == "*sit*"
