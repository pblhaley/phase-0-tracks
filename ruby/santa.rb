class Santa

  attr_accessor :age, :ethnicity, :gender, :reindeer_ranking

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].sample(9)
    @age = rand(0..140)
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

100.times do |i|
  santas << Santa.new(santa_genders[i], santa_ethnicities[i])
end

santas.each do |i|
  i = Santa.new(santa_genders.sample, santa_ethnicities.sample)
  puts "Santa: #{i}"
  puts "Reindeer Ranking: #{i.reindeer_ranking}"
  puts "Age: #{i.age}"
  puts "Ethnicity: #{i.ethnicity}"
  puts "Gender: #{i.gender}"
end


### Whenever I run this code the output puts 100 of my initialize methods before printing the correct output. I can't figure out how to get it to stop doing that. Any thoughts?

