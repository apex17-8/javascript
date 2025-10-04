const output = document.getElementById("output");
const buttons = document.querySelectorAll("#topics button");

buttons.forEach(btn => {
  btn.addEventListener("click", () => {
    const topic = btn.dataset.topic;
    renderExample(topic);
  });
});

function renderExample(topic) {
  switch (topic) {
    case "intro":
      output.innerHTML = `
      <h2>Intro to JavaScript – Variables & Functions</h2>
      <p>Demonstrates variables, arithmetic, conditionals, and a simple function.</p>
      <pre><code>
let vegetable = "Tomato";
let quantity = 5;
let price = 80;
let total = quantity * price;

if (total > 300) {
  console.log(\`You bought many \${vegetable}s! Total: \${total}\`);
} else {
  console.log(\`Few \${vegetable}s. Total: \${total}\`);
}

function discount(total) {
  return total > 500 ? total * 0.9 : total;
}
console.log("Discounted total:", discount(total));
      </code></pre>
      <p><strong>Output:</strong></p>
      <p>${(() => {
        let vegetable = "Tomato";
        let quantity = 5;
        let price = 80;
        let total = quantity * price;
        return total > 300 ?
          `You bought many ${vegetable}s! Total: ${total}` :
          `Few ${vegetable}s. Total: ${total}`;
      })()}</p>`;
      break;

    case "es6":
      output.innerHTML = `
      <h2>ES6 – Modern JS Features</h2>
      <pre><code>
const vegetables = ["Tomato", "Onion", "Carrot", "Spinach"];
const [first, second] = vegetables;
const more = [...vegetables, "Kale"];
const green = more.filter(v => v !== "Onion");
      </code></pre>
      <ul>${["Tomato", "Onion", "Carrot", "Spinach"].map(v => `<li>${v}</li>`).join("")}</ul>
      <p><strong>First two:</strong> Tomato, Onion</p>`;
      break;

    case "ts":
      output.innerHTML = `
      <h2>TypeScript Basics</h2>
      <pre><code>
let veggieName: string = "Spinach";
let price: number = 120;
let inStock: boolean = true;

function getTotal(qty: number, cost: number): number {
  return qty * cost;
}
      </code></pre>
      <p>Example Output: Spinach total = KES ${3 * 120}</p>`;
      break;

    case "async":
      output.innerHTML = `
      <h2>Async / Await & Unions</h2>
      <pre><code>
type Veggie = { name: string; price: number };
async function fetchVeggies(): Promise<Veggie[]> {
  return [{ name: "Cabbage", price: 90 }, { name: "Carrot", price: 70 }];
}
      </code></pre>
      <p>Simulated fetch...</p>
      <ul id="asyncList"></ul>`;
      simulateAsync();
      break;

    case "data":
      output.innerHTML = `
      <h2>Data Structures</h2>
      <pre><code>
const veggies = ["Tomato", "Onion", "Carrot"];
const set = new Set(veggies);
const map = new Map([["Tomato", 80], ["Onion", 70]]);
      </code></pre>
      <p>Unique veggies: Tomato, Onion, Carrot</p>
      <p>Price of Tomato: 80</p>`;
      break;

    case "dom":
      output.innerHTML = `
      <h2>DOM Manipulation Example</h2>
      <input id="veggieInput" placeholder="Add a vegetable">
      <button id="addBtn">Add</button>
      <ul id="cart"></ul>`;
      setupDOMExample();
      break;

    case "interfaces":
      output.innerHTML = `
      <h2>Objects, Interfaces, & Tuples</h2>
      <pre><code>
interface Vegetable { name: string; price: number; stock: number; }
let order: [string, number] = ["Tomato", 3];
      </code></pre>
      <p>Ordered 3 Tomatoes</p>`;
      break;

    case "generics":
      output.innerHTML = `
      <h2>Generics & Omit</h2>
      <pre><code>
interface Veggie { name: string; price: number; organic: boolean; }
function addToCart<T>(item: T): T[] { return [item]; }
      </code></pre>
      <p>Example: Added Carrot (organic)</p>`;
      break;
  }
}

// helper functions
function simulateAsync() {
  const asyncList = document.getElementById("asyncList");
  if (!asyncList) return;
  setTimeout(() => {
    asyncList.innerHTML = "<li>Cabbage - KES 90</li><li>Carrot - KES 70</li>";
  }, 1000);
}

function setupDOMExample() {
  const cart = document.getElementById("cart");
  const input = document.getElementById("veggieInput");
  const btn = document.getElementById("addBtn");
  btn.addEventListener("click", () => {
    const li = document.createElement("li");
    li.textContent = input.value;
    cart.appendChild(li);
    input.value = "";
  });
  cart.addEventListener("dblclick", e => e.target.remove());
}
