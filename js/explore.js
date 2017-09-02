// Define a function
// Takes a string as a parameter
// Split string into individual characters
// Reverse the characters
// Join the characters back up to make a reversed version of the original string

function reverseString(word) {
  var charArray = word.split('');
  var reverseArray = charArray.reverse();
  var reverseWord = reverseArray.join('');
  return reverseWord;
}

//------------------------------------------------------------------------------

// Define a variable for our new reversed string
// Print the variable

new_string = reverseString("hello");
console.log(new_string)

//------------------------------------------------------------------------------

// Define a second variable for a different word
// Print the second reversed word if a condition is met

second_string = reverseString("goodbye")

if (1==1) {
  console.log(second_string)
}