def lunch
  puts "What's for lunch?"
  yield("soup", "salad", "sweet tea")
end

lunch{|item1, item2, item3| puts "We're having #{item1} and #{item2} with #{item3} to drink!"}