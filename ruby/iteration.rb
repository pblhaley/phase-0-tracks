#RELEASE 0

def lunch
  puts "What's for lunch?"
  yield("soup", "salad", "sweet tea")
end

lunch{|item1, item2, item3| puts "We're having #{item1} and #{item2} with #{item3} to drink!"}



#RELEASE 1

########## ARRAY ##########

colors = ["red", "orange", "yellow", "blue", "purple"]

puts "Original data:"
p colors

colors.each do |color|
  puts color
end

puts "After .each call:"
p colors

modified_colors = colors.map! do |color|
  puts color
  color.upcase
end

puts "After .map! call:"
p colors

########## HASH ##########

books = {
  "Twilight" => "Stephanie Meyer",
  "Harry Potter" => "JK Rowling",
  "The Dictionary" => "Merriam-Webster",
  "To Kill a Mockingbird" => "Harper Lee",
  "Carrie" => "Stephen King"
}

puts "Original data:"
p books

books.each do |title, author|
 puts "#{title} was written by #{author}."
end

puts "After .each call:"
p books



#RELEASE 2

numbers = [1, 2, 3, 4, 5]
ages = {
  "Peter" => 27,
  "Hannah" => 28,
  "Natalie" => 32,
  "Jess" => 30,
  "Aeron" => 24
}

#1-Iterate through items and delete any that meet a certain condition.

numbers.delete_if {|number| number > 3}
p numbers

ages.delete_if {|name, age| age >= 30}
p ages

#2-Filters a data structure for only items that satisfy a certain condition.



#3-Different method that filters a data structure for only items satisfying a certain condition.



#4-Method that removes items from a data structure until the condition in the block evaluates to false, then stops.