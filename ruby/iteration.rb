#RELEASE 0
#def lunch
#  puts "What's for lunch?"
#  yield("soup", "salad", "sweet tea")
#end

#lunch{|item1, item2, item3| puts "We're having #{item1} and #{item2} with #{item3} to drink!"}



#RELEASE 1
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

####################

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
