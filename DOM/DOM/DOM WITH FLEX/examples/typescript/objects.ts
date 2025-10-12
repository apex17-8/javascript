interface Vegetable {
  name: string;
  price: number;
  stock: number;
}

type VeggieList = Vegetable[];

const veggies: VeggieList = [
  { name: "Tomato", price: 80, stock: 20 },
  { name: "Carrot", price: 60, stock: 15 }
];

// Tuple
let order: [string, number] = ["Tomato", 3];

console.log(`Ordered ${order[1]} ${order[0]}s`);
