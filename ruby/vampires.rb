puts "How many employees will you be processing?"
amount_employees=gets.chomp.to_i
index = 0

while index < amount_employees

puts "What is your name?"
name=gets.chomp

puts "What is your age?"
age=gets.chomp.to_i

puts "What year were you born?"
birth_year=gets.chomp.to_i

if age == 2017 - birth_year
  valid_age= true
else
  valid_age= false
end

valid_garlic=false
until valid_garlic
  puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
  garlic=gets.chomp
    if garlic== "y"
      garlic=true
      valid_garlic=true
    elsif garlic== "n"
      garlic==false
      valid_garlic=true
    else
      puts "Please respond with 'y' or 'n'."
    end
end

valid_insurance=false
until valid_insurance
  puts "Would you like to enroll in the company's health insurance? y/n"
  insurance=gets.chomp
    if insurance== "y"
      insurance=true
      valid_insurance=true
    elsif insurance== "n"
      insurance=false
      valid_insurance=true
    else
      puts "Please respond with 'y' or 'n'."
    end
end

allergies = ""
while allergies != "done"
  puts "Please list your allergies one at a time. Type 'done' when finished."
  allergies=gets.chomp
    if allergies == "sunshine"
      break
    end
end


if valid_age && (garlic || insurance)
  result = "Probably not a vampire."
elsif valid_age=false && (garlic=false || insurance=false)
  result = "Probably a vampire."
elsif valid_age=false && garlic=false && insurance=false
  result = "Almost certainly a vampire."
elsif name = "Drake Cula" || "Tu Fang"
  result = "Definitely a vampire."
elsif allergies == "sunshine"
  result = "Probably a vampire."
else
  result = "Results inconclusive."
end

puts result

index += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."