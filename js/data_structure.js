var colors = ["blue", "pink", "green", "red"];

var names = ["Joe", "Jolene", "Jerry", "Jess"];

// console.log(colors);
// console.log(names);

// colors.push("purple");
// names.push("Jeff");

// console.log(colors);
// console.log(names);

/////////////////////////////////////

function Car(name, mileage, make){
  console.log("Surprise, here's a new car:", this);

    this.name = name;
    this.mileage = mileage;
    this.make = make;
    this.has_character = true;

    this.honk = function(song) { console.log("*plays " + song + " *") };

}

var newCar = new Car("Bertie", 100, "Jeep");
console.log(newCar)
newCar.honk("La Cucaracha")
console.log("======================")

var anotherCar = new Car("Stu", 900, "Hyundai");
anotherCar.has_character = false;
console.log(anotherCar)
console.log("======================")


var lastCar = new Car("Bertie", 20000, "Ford");
console.log(lastCar)
lastCar.honk("Somewhere Over the Rainbow")
console.log("======================")

