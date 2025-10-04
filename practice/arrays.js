//fruits array
let fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry"];
//accessing elements
console.log(fruits[0]); // Apple
console.log(fruits.length); // 5
//adding elements
fruits.push("Fig");
console.log(fruits); // ["Apple", "Banana", "Cherry", "Date", "Elderberry", "Fig"]
//removing elements
fruits.pop();
console.log(fruits); // ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
fruits.shift();
console.log(fruits); // ["Banana", "Cherry", "Date", "Elderberry"]
fruits.unshift("Apricot");
console.log(fruits); // ["Apricot", "Banana", "Cherry", "Date", "Elderberry"]
//iterating over elements
fruits.forEach((fruit) => console.log(fruit));
//finding elements
console.log(fruits.indexOf("Cherry")); // 2 (index)
console.log(fruits.includes("Date")); // true
//slicing and splicing
let citrus = fruits.slice(1, 3);
console.log(citrus); // ["Banana", "Cherry"]
fruits.splice(1, 2);
console.log(fruits); // ["Apricot", "Date", "Elderberry"]
//sorting and reversing
fruits.sort();
console.log(fruits); // ["Apricot", "Date", "Elderberry"]
fruits.reverse();
console.log(fruits); // ["Elderberry", "Date", "Apricot"] 
//search,combine,map,filter,reduce
let numbers = [1, 2, 3, 4, 5];
let doubled = numbers.map(n => n * 2);
console.log(doubled); // [2, 4, 6, 8, 10]
let even = numbers.filter(n => n % 2 === 0);
console.log(even); // [2, 4]
let sum = numbers.reduce((total, n) => total + n);
console.log(sum); // 15
let combined = fruits.concat(doubled);
console.log(combined); // ["Elderberry", "Date", "Apricot", 2, 4, 6, 8, 10]
let found = numbers.find(n => n > 3);
console.log(found); // 4
let foundIndex = numbers.findIndex(n => n > 3);
console.log(foundIndex); // 3
//emptying an array
numbers.length = 0;
console.log(numbers); // [] []
fruits = [];
console.log(fruits); // []
//multi-dimensional arrays
let matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
console.log(matrix[1][2]); // 6
//array from string
let str = "Hello, World!";
let chars = Array.from(str);
console.log(chars); // ["H", "e", "l", "l", "o", ",", " ", "W", "o", "r", "l", "d", "!"]
//array of objects
let people = [
  { name: "Alice", age: 30 },
    { name: "Bob", age: 25 },
    { name: "Charlie", age: 35 }
];
let names = people.map(person => person.name);
console.log(names); // ["Alice", "Bob", "Charlie"]
let adults = people.filter(person => person.age >= 30);
console.log(adults); // [{ name: "Alice", age: 30 }, { name: "Charlie", age: 35 }]
//nested arrays
let nested = [[1, 2], [3, 4], [5, 6]];
console.log(nested[2][0]); // 5
//flattening arrays
let flat = nested.flat();
console.log(flat); // [1, 2, 3, 4, 5, 6]
//checking if all/some elements meet a condition
let allAboveZero = numbers.every(n => n > 0);
console.log(allAboveZero); // true
let someAboveThree = numbers.some(n => n > 3);
console.log(someAboveThree); // true
//joining array elements into a string
let joined = fruits.join(", ");
console.log(joined); // "Apple, Banana, Cherry, Date, Elderberry"
//splitting a string into an array
let sentence = "This is a sample sentence.";
let words = sentence.split(" ");
console.log(words); // ["This", "is", "a", "sample", "sentence."]
//using spread operator with arrays
let moreFruits = ["Grape", "Honeydew"]; 
let allFruits = [...fruits, ...moreFruits];
console.log(allFruits); // ["Apple", "Banana", "Cherry", "Date", "Elderberry", "Grape", "Honeydew"]
//using Array.of and Array.from
let arrOf = Array.of(1, 2, 3);
console.log(arrOf); // [1, 2, 3]
let arrFrom = Array.from("ABC");
console.log(arrFrom);
// ["A", "B", "C"]
//using fill and copyWithin
let filled = new Array(5).fill(0);
 // coding in swahili language
console.log(filled); // [0, 0, 0, 0, 0]
let copy = [1, 2, 3, 4, 5];
copy.copyWithin(0, 3);
console.log(copy); // [4, 5, 3, 4, 5]
//using flatMap
let flatMapped = [1, 2, 3].flatMap(n => [n, n * 2]);
console.log(flatMapped); // [1, 2, 2, 4, 3, 6]
//using Array.isArray
console.log(Array.isArray(fruits)); // true
console.log(Array.isArray({})); // false
