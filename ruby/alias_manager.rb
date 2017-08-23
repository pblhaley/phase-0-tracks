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
end

p alias_manager("Peter Haley")