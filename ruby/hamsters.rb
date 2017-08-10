puts "What is the hampster's name?"
name=gets.chomp
p name

puts "How loud is the hampster? Please choose a level from 1-10, 10 being the loudest."
volume=gets.chomp
p volume.to_i

puts "What is the hampster's fur color?"
fur=gets.chomp
p fur

puts "What is the hampster's estimated age?"
age=gets.strip

if age.empty?
  age=nil
else
  age=age.to_f
end
p age

puts "Is this hampster a good candidate for adoption? y/n"
adoption=gets.chomp
p adoption
