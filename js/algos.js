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

//Take in an integer(x), to determine how many times to run the following:
//Loop until an array reaches the given length of x, generate a random string and add it to the array with each pass. The random string should be of varying length, with a min of 1 letter and a max of 10 letters.

//ATTEMPT 1

// function random_data(x) {
//   var rand_word = "";
//   var rand_array = [];
//   for (var i = 0; i < x; i++); {
//     for (var i = 0; i < Math.floor((Math.random() * 10  ) + 1); i++) {
//       var letters = "abcdefghijklmnopqrstuvwyz";
//       var rand_letter = letters.charAt(Math.floor   ((Math.random() * 25 + 1)));
//       rand_word += rand_letter;
//       console.log(rand_word);
//     }
//      rand_array.push(rand_word);
//     console.log(rand_array);
//   }
//   console.log(rand_array);
// }

// random_data(10);


//ATTEMPT 2

function random_word() {
  var rand_word = "";
  for (var i = 0; i < Math.floor((Math.random() * 10  ) + 1); i++) {
      var letters = "abcdefghijklmnopqrstuvwyz";
      var rand_letter = letters.charAt(Math.floor   ((Math.random() * 25 + 1)));
      rand_word += rand_letter;
    }
    return rand_word;
}

function random_data(x) {
  var rand_array = [];
  for (var i = 0; i < x; i++); {
    rand_array.push(random_word);
  }
  console.log(rand_array);
}

//console.log(random_word())
random_data(10);

//Notes: can't seem to get this to work correctly. In both, I'm not able to get more than one added to the array. Not sure what I'm doing wrong. In the first pass, I'm guessing it's because I'm using a for loop within a for loop - not sure if that's allowed. In the second pass, the function is unable to see the original function I created. Have spent too much time on this, though, need help seeing where I'm going wrong!