# Virus Predictor

# I worked on this challenge with Anica for around 2 hours, and then started over from scratch to get more practice by myself. That took me XXX hours.


# EXPLANATION OF require_relative
#It is essentially grabbing the code from the designated file, which is stored in the same folder (hence the relative). It's equivalent to copying and pasting the code into our program.
#
require_relative 'state_data'

class VirusPredictor

#Sets defaults for state of origin, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



#Displays the number of predicted deaths and the speed of spread based on population density, population, and state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

  def predicted_deaths
    # predicted deaths is solely based on population density
    # number_of_deaths =
      # if @population_density >= 200
      #   (@population * 0.4).floor

    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end

     number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#Displays how quickly (in months) the virus will spread.
  def speed_of_spread
  #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_details|
  new_state = VirusPredictor.new(state,state_details[:population_density], state_details[:population])
  new_state.virus_effects
    end



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

#Require_relative -- current directory
#Require -- full path to directory needed