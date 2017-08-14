puts "What is your name?"
name=gets.chomp

puts "What is your age?"
age=gets.chomp.to_i
  if age < 100
    age_condition = true
  else
    age_condition = false
  end

puts "What year were you born?"
birth_year=gets.chomp.to_i
  if birth_year > 1915
    birth_year_condition = true
  else
    birth_year_condition = false
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
garlic=gets.chomp
  if garlic == "y"
    garlic_condition = true
  else
    garlic_condition = false
  end

puts "Would you like to enroll in the company's health insurance? y/n"
insurance=gets.chomp
  if insurance == "y"
    insurance_condition = true
  else
    insurance_condition = false
  end

vampire_status = false
puts case
when age_condition && garlic_condition && insurance_condition
  "Probably not a vampire."
when age_condition=false && (garlic_condition=false || insurance_condition=false)
  "Probably a vampire."
when age_condition=false && garlic_condition=false && insurance_condition=false
  "Almost certainly a vampire."
when name="Drake Cula" || "Tu Fang"
  "Definitely a vampire."
else
  "Results inconclusive."
end