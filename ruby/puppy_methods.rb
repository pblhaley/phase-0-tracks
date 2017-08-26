########## PUPPY CLASS ##########

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

########## DRIVER CODE FOR PUPPY CLASS ##########

sailor = Puppy.new
sailor.fetch("ball")
sailor.speak(3)
sailor.roll_over
sailor.dog_years(5)
sailor.sit


########## SUPERHERO CLASS ##########

class Superhero

  def initialize
    puts "Initializing new superhero instance..."
  end

  def fly
    puts "*flies*"
  end

  def villan(name)
    puts "#{name} is my archnemesis!"
  end

end

hero_array = []

50.times do
  superhero = Superhero.new
  hero_array << superhero
end

hero_array.each do |i|
  puts i.fly
  puts i.villan("The Joker")
end




########## DRIVER CODE FOR SUPERHERO CLASS ##########

#batman = Superhero.new
#batman.fly
#batman.villan("The Joker")