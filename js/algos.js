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
longest_phrase(["long phrase","longest phrase","longer phrase"]);

longest_phrase(["anc","a","d"]);