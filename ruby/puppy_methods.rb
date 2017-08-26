class Puppy

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


end

########## DRIVER CODE ##########

sailor = Puppy.new
sailor.fetch("ball")
sailor.speak(3)
sailor.roll_over
