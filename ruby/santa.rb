class Santa

  attr_accessor :age, :ethnicity, :gender

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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    bad_reindeer = @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(bad_reindeer)
  end

end

########## TEST CODE ##########

#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip")
#santa.celebrate_birthday
#santa.get_mad_at("Vixen")
#santa.age
#santa.ethnicity
#santa.gender = "prefer not to say"

santas = []
santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "queer", "prefer not to say"]
santa_ethnicities = ["black", "Latino", "white", "Asian-American", "Pacific Islander", "prefer not to say"]

santa_genders.length.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

santas.each do |i|
  i = Santa.new(santa_genders.sample, santa_ethnicities.sample)
  i.celebrate_birthday
  i.get_mad_at("Vixen")
  i.age
  i.ethnicity
  i.gender = "prefer not to say"
  p i
end



