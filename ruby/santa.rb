class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

end

########## TEST CODE ##########

#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip")

santas = []
santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "queer", "prefer not to say"]
santa_ethnicities = ["black", "Latino", "white", "Asian-American", "Pacific Islander", "prefer not to say"]

santa_genders.length.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

santas.each do
  new_santa = Santa.new(santa_genders.sample, santa_ethnicities.sample)
  p new_santa
end

