// compillation (tsc veggies.ts)
let veggieName: string = "Spinach";
let price: number = 120;
let inStock: boolean = true;

function getTotal(qty: number, cost: number): number {
  return qty * cost;
}

console.log(`Total price of ${veggieName}: KES ${getTotal(3, price)}`);
