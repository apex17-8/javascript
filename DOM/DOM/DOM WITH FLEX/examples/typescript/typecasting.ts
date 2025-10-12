// Typecasting
let inputValue: unknown = "120";
let price = inputValue as string;
console.log("Price (casted):", price);

// Omit
interface VeggieDetails {
  name: string;
  price: number;
  stock: number;
  organic: boolean;
}
type PublicVeggie = Omit<VeggieDetails, "stock">;

// Generics
function addToCart<T>(item: T): T[] {
  return [item];
}

const carrot: PublicVeggie = { name: "Carrot", price: 70, organic: true };
const myCart = addToCart(carrot);
console.log(myCart);
