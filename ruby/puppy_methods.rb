class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

########## DRIVER CODE ##########
sailor = Puppy.new
sailor.fetch("ball")
