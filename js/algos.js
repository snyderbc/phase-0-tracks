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

////////////////////////////////////////////

//Find a Key-Value Match Pseudocode
// Take in two objects at the beginning.
// Store the properties of the first object in an array.
// See if the second object contains any of the array's values as properties.
    //If it does, store that property in a variable, and see if the values of that property for each of the objects are equal as well. If so, return true. If not, return false.


// function objectMatch(object1, object2){
//   var obj1Array = Object.keys(object1);
//   var is_match = false;
//   for (var i = 0; i < obj1Array.length; i++) {
//       var obj1Prop = obj1Array[i];
//       if (object2[obj1Prop] != undefined){
//         var matching_prop = obj1Array[i];
//           if (object1[matching_prop] === object2.matching_prop){
//             is_match = true;
//           }
//         }
//       }
//   }
//   return is_match;
// }

// //DRIVER CODE

// objectMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// objectMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});

//Note to grader: after several hours of trying, I wasn't able to get my objectMatch function to work correctly. I feel like I'm really close? The error message I'm getting is pretty vague, can't seem to pinpoint the problem.If you can tell me where my mistake is, would love to hear what I did wrong!

////////////////////////////////////////

