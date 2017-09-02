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
// Steps:
// Output: True or false depending on whether or not our two given objects contain a matching key-value pair

function matchingData ({object1Key: object1Value, object1Key2: object1Value2}, {object2Key: object2Value, object2Key2: object2Value2}) {
  var dotheyMatch = false;
  if (object1Value == object2Value) {
    dotheyMatch = true;
    console.log(dotheyMatch);
  }
  if (object1Value2 == object2Value2) {
    dotheyMatch = true;
    console.log(dotheyMatch);
  }
  else {
    dotheyMatch = false;
    console.log(dotheyMatch);
  }
}

matchingData({animal: "dog", legs: 4}, {animal: "pig", legs: 4})
matchingData({animal: "dog", legs: 3}, {animal: "pig", legs: 4})
