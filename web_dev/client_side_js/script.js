console.log("The script is running!");

var photos = document.getElementsByTagName("img");
var ava_photo = photos[0];
ava_photo.style.border = "3px dotted green";
// ava_photo.style.opacity = 0.5;

var newHeading = document.createElement("h2");
var newText = document.createTextNode("Ava is kinda spoiled.");
newHeading.appendChild(newText);

var currentHeadingList = document.getElementsByTagName("h2");
var currentHeadingSingular = currentHeadingList[0];
document.body.insertBefore(newHeading, currentHeadingSingular);

function addOpacity(event) {
  event.target.style.opacity= 0.5;
}

function removeOpacity(event) {
  event.target.style.opacity= 1.0;
}

ava_photo.addEventListener("mouseover", addOpacity);
ava_photo.addEventListener("mouseout", removeOpacity);