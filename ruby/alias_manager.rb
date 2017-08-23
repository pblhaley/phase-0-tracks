# Alright! Here we go...
# Define a method that takes a string of two words.
# Convert that string to an array of two words.
# Swap the order of the two words in the array.
# Put the array back into a string.
# Convert the new string into an array of all it's characters.
# Iterate through the new array and if a character is a vowel, switch it to the next vowel in the sequence: aeiou.
# Iterate through the new array and if the character is a consonate, switch it to the next consonant in the alphabet (be sure to skip over vowels, ie. d would become f).
# Put this second new array back into string form.
# Print the string.

def alias_manager(original_name)
  reverse_words = original_name.to_s.downcase.split(' ').reverse!.join(' ')
  characters = reverse_words.chars
  characters.length.times do |i|
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
      if vowels.include?(characters[i])
        characters[i] == vowels[vowels.index(characters[i]).next]
      end
      i += 1
  end
  alias_name = characters.join.split(' ')
  alias_name.last.capitalize!
  alias_name.first.capitalize!
  alias_name.join(' ')
end

p alias_manager("Peter Haley")