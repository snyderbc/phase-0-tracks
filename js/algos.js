///Longest Phrase Psuedocode
// Take an array that contains a collection of of words.
// Iterate through each item in the array, by index. Define an empty variable for longest word.
//   If the item is bigger than the longest word, set it to be the longest word.
//   At the end, print the longest word.

function longest_phrase(word_array) {
  current_longest = ""
  for(var i = 0; i < word_array.length; i++) {
    if (word_array[i].length > current_longest.length) {
      current_longest = word_array[i];
    }
  }
  console.log(current_longest);
}

//DRIVER CODE
// longest_phrase(["long phrase","longest phrase","longer phrase"]);

// longest_phrase(["anc","a","d"]);

//Find a Key-Value Match Pseudocode
// Take in two objects at the beginning.Loop through the first object, comparing the first value to each value of the second object, and then the first object's second value to both objects of the second object. If at any point the keys match, check to see if the values match. If the values match, return true.
//use a for-in loop?

function objectMatch(object1, object2){
  for (var key in object1) {
    if (object1.hasOwnProperty(key)) {
      console.log(key + " -> " + object1[key]);
  }
}

}

objectMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// objectMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});