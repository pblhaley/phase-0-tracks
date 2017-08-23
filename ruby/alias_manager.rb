# Alright! Here we go...
# Define a method that takes a string of two words.
# Convert that string to an array of two words.
# Swap the order of the two words in the array.
# Put the array back into a string.
# Convert the new string into an array of all it's characters.
# Iterate through the new array and if a character is a vowel, switch it to the next vowel in the sequence: aeiou.
# Iterate through the new array and if the character is a consonate, switch it to the next consonant in the alphabet (be sure to skip over vowels, ie. d would become f).
# Put this second new array back into string form and capitalize appropriately.
# Print the string.

loop do
  puts "Please enter the first and last name of the person who needs an alias. Please enter 'quit' when you are ready to exit."
  original_name = gets.chomp
  break if original_name.downcase == "quit"

  reverse_name = original_name.to_s.downcase.split(' ').reverse!.join(' ')
  #p reverse_name

  characters = reverse_name.chars
  #p characters

  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  i = 0
  until i == characters.length
    if characters[i] == "u"
      characters[i] = vowels[0]
    elsif characters[i] == "z"
      characters[i] = consonants[0]
    elsif vowels.include?(characters[i])
      characters[i] = vowels[vowels.index(characters[i]).next]
    elsif consonants.include?(characters[i])
      characters[i] = consonants[consonants.index(characters[i]).next]
    end
    i += 1
  end
#  p characters

  alias_name = characters.join.split(' ')
  cap_alias = alias_name.map{|i| i.capitalize}.join(' ')
  puts cap_alias

end

