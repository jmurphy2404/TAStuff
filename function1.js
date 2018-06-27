function nycdaWelcome(name) {
	return `Welcome to NYCDA ${name}! Enjoy your stay!`
}

function brokenCalcultor(num1, num2) {
	return num2 * 3
}

function lineThemUp(int1, int2, int3) {
	return [int1, int2, int3]
}

let royalizer = (gender, name) => {
  if(gender == "male"){
    return `His Majesty ${name}`
  }else{
    return `Her Majesty ${name}`
  }
}

royalizer("male", "john");
royalizer("female", "ann");

let magicDoor = (num) => {
  if(num == 1){
    message = "you won a car"
  }else if (num ==2) {
    message = "you won a tshirt"
  }else if (num == 3) {
    message = "sorry you got teleported to antarctica"
  }else {
    return "Not a valid input"
  }
  alert(message);
}

magicDoor(1);
magicDoor(2);
magicDoor(3);
magicDoor(4);