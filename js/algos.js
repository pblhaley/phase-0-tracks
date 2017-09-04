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

console.log(longestWord(["lamp", "backpack", "camping stove", "hammock", "cooler"]))
console.log(longestWord(["long word", "longer word", "longest word"]))


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
}

matchingData({animal: "dog", legs: 4}, {animal: "pig", legs: 4})
matchingData({animal: "dog", legs: 3}, {animal: "pig", legs: 4})


//--------------- RELEASE 2 ---------------
// Write a function that takes an integer for length, and builds an returns an array of strings of the given length.
// Input: An integer
// Steps: Create a first function that outputs a random word
//          -Create an alphabet variable
//          -
//
// Output: An array of random words equal to the integer we inputted

function randomWord() {
  var word = "";
  var randomLength = Math.floor(Math.random()*10)
  for (var i = 0; i <= randomLength; i++) {
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var character = Math.floor(Math.random()*26);
    word += alphabet[character];
  }
  return word
}


function randomArray(integer) {
  var randomwordsArray = []
  for (var i = 0; i < integer; i++) {
    randomwordsArray.push(randomWord())
  }
  return randomwordsArray
}

console.log(randomArray(3))