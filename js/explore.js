//PSEUDOCODE

//Take a string as a paramater
// Run through each letter in the string, starting with the last item (at index -1) and running through the next to last time, and so on until you reach the first letter of the word. Add each letter to a new reversed word as you go.

var reverseString = ""

function reverse(str) {
  for (var i = str.length; i > 0; i += -1) {
   reverseString = reverseString + (str[i-1]);
  }
  return reverseString;
}


//DRIVER CODE
//reverse("hello");

// console.log(reverse("pumpkin"))

var reversedWord = (reverse("pumpkin"));

if (1 == 1){
  console.log("The reversed word is " +reversedWord);
}
