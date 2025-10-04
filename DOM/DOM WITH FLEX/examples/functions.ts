type Veggie = { name: string; price: number };
type Organic = { organic: boolean };

type OrganicVeggie = Veggie & Organic; // intersection

function showPrice(item: Veggie | string) {
  if (typeof item === "string") console.log(`${item} – Price unknown`);
  else console.log(`${item.name} costs KES ${item.price}`);
}

// async/await example
async function fetchVeggies(): Promise<Veggie[]> {
  return new Promise(resolve =>
    setTimeout(() => resolve([
      { name: "Cabbage", price: 90 },
      { name: "Carrot", price: 70 }
    ]), 1000)
  );
}

(async () => {
  const veggies = await fetchVeggies();
  veggies.forEach(showPrice);
})();
