let time = "11pm";
let activity = "watching TV";
console.log(`It's ${time} and I'm ${activity}.`);
//for name
//Hello <name>! Welcome to the platform.
name = "Alice";
console.log(`Hello ${name}! Welcome to the platform.`);
//create a greeting function
function greet(name) {
    return `Hello ${name}! Welcome to the platform.`;
    }
//car selling function
const car = "Toyota";
function sell(car) {
    return "The, " + car +" has been sold.";
    }


function shout (name){
return `HELLO ${name.toUpperCase()}! WELCOME TO THE PLATFORM.`;
}
console.log(greet("Alice"));
console.log(shout("Alice"));

//making a square number
function square(num) {
    return num * num;
}
console.log(square(5));

function sum(a,b){
    return a + b;
}
//control flow statement
//if statement
let temp = 30;
/*if (temp >= 20){
    console.log("It's a nice day");
}else{
    console.log("It's a bit chilly");
}
*/

//if-else if-else statement
if (temp == 20){
    console.log("It's a nice day");
}else if (temp >= 20){
    console.log("It's a bit hot");
}else{
    console.log("It's freezing!");
}

//switch statement
let dayOfTheweek = "monday";
switch (dayOfTheweek){
    case "monday":
        console.log("It's Monday!");
        break;
    case "tuesday":
        console.log("It's Tuesday!");
        break;
    case "wednesday":
        console.log("It's Wednesday!");
        break;
    default:
        console.log("It's a weekday!");
}

//loops
//while loop
let manyattas = 0;
while (manyattas <= 10){
    console.log(`we have build ${manyattas} manyattas`);
    manyattas++;
}

//for loop
for (let students = 0; students <= 10; students++){
    console.log(`we have admitted ${students} students`);
}