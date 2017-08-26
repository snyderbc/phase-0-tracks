#This is a mixin module, so we don't have to use "self"

module Flight
  def take_off(altitude)
    puts "Takingoff and ascending until reaching #{altitude}  ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)