//dates,sets, maps in JavaScript
// Dates
// The Date object is used to work with dates and times. It provides methods for creating, manipulating, and formatting dates.
// You can create a Date object using the new Date() constructor.

let date1 = new Date(); // current date and time
let now = new Date();
console.log(now); // current date and time
console.log(now.getFullYear()); // current year

// Sets
// A Set is a collection of unique values. You can store any type of values in a Set, whether primitive values or object references.
// A value in the Set may only occur once; it is unique in the Set's collection.
let set1 = new Set([1, 2, 3, 4, 5]);
let set2 = new Set([3, 4, 5, 6, 7]);
let union = new Set([...set1, ...set2]);
let intersection = new Set([...set1].filter(x => set2.has(x)));
let difference = new Set([...set1].filter(x => !set2.has(x)));
console.log(union); // Set { 1, 2, 3, 4, 5, 6, 7 }
console.log(intersection); // Set { 3, 4, 5 }
console.log(difference); // Set { 1, 2 }

// Maps
//map is a collection of keyed data items, just like an Object. But the main difference is that Map allows keys of any type.
// A Map holds key-value pairs and remembers the original insertion order of the keys.
// Any value (both objects and primitive values) may be used as either a key or a value.
let map = new Map();
map.set('name', 'Alice');
map.set('age', 30);
console.log(map.get('name')); // Alice
console.log(map.get('age')); // 30 
console.log(map.has('name')); // true
console.log(map.size); // 2
map.delete('age');
console.log(map.size); // 1