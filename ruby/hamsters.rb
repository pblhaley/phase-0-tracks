puts "What is the hampster's name?"
name=gets.chomp
puts "Name: #{name}"

puts "How loud is the hampster? Please choose a level from 1-10, 10 being the loudest."
volume=gets.chomp
puts "Volume: #{volume.to_i}"

puts "What is the hampster's fur color?"
fur=gets.chomp
puts "Fur color: #{fur}"

puts "What is the hampster's estimated age?"
age=gets.strip

if age.empty?
  age=nil
else
  age=age.to_f
end
puts "Age: #{age}"

puts "Is this hampster a good candidate for adoption? y/n"
adoption=gets.chomp
puts "Adoptable: #{adoption}"