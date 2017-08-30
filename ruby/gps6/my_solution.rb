# Virus Predictor

# I worked on this challenge [with: Britt Flowers].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to upload data from another file into our current file. It is a built-in method that retrieves whatever file is input. The difference between require_relative and require is that require_relative is used if the uploaded data is in the same directory as the working file and require is used if it's not.
#
require_relative 'state_data'

class VirusPredictor

# initialize is responsible for initializing the VirusPredictor class, taking in three parameters, and for declaring the three instance variables within it.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_of_deaths
    @speed
  end

# virus_effects is responsible for calling two methods within this method.
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

# private is responsible for making all the methods below it private from outside interference.
  private

# predicted_deaths is taking in three parameters and using conditionals to output and print the number of deaths for a certain state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end
  end

# speed_of_spread is responsible for taking in two parameters, using conditionals, and outputting and printing the rate of virus spread in months for a particular state.
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do |state, population_data|
  state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section

# 1. What are the differences between the two different hash syntaxes shown in the state_data file?
#    The hash rocket allows for a key to be a string and it also stores it's information superficially, whereas the hash colon stores information permanently in one place and take symbols for keys.

# 2. What does require_relative do? How is it different from require?
#    Require_relative uploads information from a separate file into the working file. It is different from require because it only works for files within the same directory as the working file. If you need to upload files in a different directory you would use regular require and provide the file path.

# 3. What are some ways to iterate through a hash?
#    Well, here we used a .each type of iteration, but I think you can also use .map or simply the "do" command.

# 4. When refactoring virus_effects, what stood out to you about the variables, if anything?
#    Having those variables as arguments was unneccessary because the variables were being called within the methods already.

# 5. What concept did you most solidify in this challenge?
#    This challenge helped me solidify calling hashes, and especially hashes within hashes. I didn't at first get the iteration release spot on, but now I feel like I have a much better understanding of keys and values especially with hashy hashes!