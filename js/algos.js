//--------------- RELEASE 0 ---------------
// Write a function that takes an array of words or phrases and returns the longest word or phase in the array.
// Input: array
// Steps: loop through the array and for each....
//        find the length of the word
//        compare the length to a previous word
//        if the length is larger store it in a new array
//        declare a variable for the new array
//        return the variable
// Output: variable containing longest word or phrase in that array

function longestWord(array) {
  word = [" "];
  for (i = 0; i < array.length; i++) {
    if (array[i].length > word[0].length) {
      word.splice(0, 1);
      word.push(array[i]);
    }
  }
  var correctWord = word[0];
  return correctWord;
}

console.log(longestWord(["lamp", "backpack", "camping stove", "hammock", "cooler"]));
console.log(longestWord(["long word", "longer word", "longest word"]));


//--------------- RELEASE 1 ---------------
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// Input: two objects with key-value pairs
// Steps: loop through both object keys
//        if no matching keys then return false
//        if matching keys then return true
// Output: True or false depending on whether or not our two given objects contain a matching key-value pair

// I think I've got this code right, or at least pretty close, but I can't get my function to return true or false without having to console.log the return. What gives?

function matchingData (object1, object2) {
  for (var key1 in object1) {
    for (var key2 in object2) {
      if (key1 == key2 && object1[key1] == object2[key2]) {
          console.log(true);
      };
    };
  };
  console.log(false);
};

matchingData({animal: "dog", legs: 4}, {animal: "pig", legs: 4});
matchingData({animal: "dog", legs: 3}, {animal: "pig", legs: 4});


//--------------- RELEASE 2 ---------------
// Write a function that takes an integer for length, and builds an returns an array of strings of the given length.
// Input: An integer
// Steps: Create a first function that outputs a random word
//          -Create a word variable and an alphabet variable
//          -Use #random to create a variable that makes your random words have a varity of lengths up to 10 characters
//          -Then loop through the alphabet that length variable to create random words
//          -Return that word
//        Create a second function that accepts an integer
//          -Create an empty array to catch your new words
//          -Loop for however many times the integer argument defined
//          -Push those new words into your array
//          -Return the array
// Output: An array of random words equal to the integer we inputted

function randomWord() {
  var word = "";
  var randomLength = Math.floor(Math.random() * 10)
  for (var i = 0; i <= randomLength; i++) {
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var character = Math.floor(Math.random() * 26);
    word += alphabet[character];
  }
  return word
};


function randomArray(integer) {
  var randomwordsArray = []
  for (var i = 0; i < integer; i++) {
    randomwordsArray.push(randomWord())
  }
  return randomwordsArray
};

console.log(randomArray(3));
console.log(randomArray(5));


//--------------- DRIVER CODE ---------------
// Write driver code that generates an array, prints the array, feeds the array into longestWord function, and prints the result. Do all of this 10 times.
// Input: Loop 10 times
// Steps: Create a random array using our randomArray function
//        Print this random array
//        Feed this random array into the longestWord function
//        Print the longestWord result
// Output: the longest word in our random array (10 times over)

// This loop seems to run endlessly even though I have it set to 10...I think it has something to do with my longestWord function above because when I comment out that part of the driver code everything else runs fine...but my driver code for my longestWord function works the correct way...

for (var i = 0; i < 10; i++) {
  var randomWords = randomArray(5);
  console.log(randomWords);
  console.log(longestWord(randomWords));
};