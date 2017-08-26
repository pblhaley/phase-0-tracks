class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times do |i|
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(integer)
    puts integer * 7
  end

  def sit
    puts "*sits*"
  end

end

########## DRIVER CODE ##########

sailor = Puppy.new
sailor.fetch("ball")
sailor.speak(3)
sailor.roll_over
sailor.dog_years(5)
sailor.sit
