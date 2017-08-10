puts "What is the hampster's name?"
name=gets.chomp

puts "How loud is the hampster? Please choose a level from 1-10, 10 being the loudest."
volume=gets.chomp

puts "What is the hampster's fur color?"
fur=gets.chomp

puts "Is this hampster a good candidate for adoption? y/n"
adoption=gets.chomp

puts "What is the hampster's estimated age?"
age=gets.chomp

if age == " "
  age = nil
else
  age=gets.chomp
end


