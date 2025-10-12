const cards = document.querySelectorAll(".topic-card");
const lesson = document.getElementById("lesson");

cards.forEach(card => {
  card.addEventListener("click", () => {
    const topic = card.dataset.topic;
    displayLesson(topic);
  });
});

function displayLesson(topic) {
  switch (topic) {
    case "intro":
      lesson.innerHTML = `
      <h2>Intro to JavaScript – Basics</h2>
      <p>Variables, operators, conditionals, and functions.</p>
      <pre><code>
let vegetable = "Tomato";
let qty = 5;
let price = 80;
let total = qty * price;

if (total > 300) console.log("Bulk purchase!");
      </code></pre>
      <p><strong>Result:</strong> You bought 5 Tomatoes for KES ${5 * 80}</p>`;
      break;

    case "es6":
      lesson.innerHTML = `
      <h2>ES6 Features – Arrays & Destructuring</h2>
      <pre><code>
const veggies = ["Tomato", "Onion", "Carrot"];
const [first, second] = veggies;
const more = [...veggies, "Spinach"];
      </code></pre>
      <ul>${["Tomato", "Onion", "Carrot", "Spinach"].map(v => `<li>${v}</li>`).join("")}</ul>`;
      break;

    case "ts":
      lesson.innerHTML = `
      <h2>TypeScript – Typed Variables</h2>
      <pre><code>
let veggieName: string = "Spinach";
let price: number = 120;
let inStock: boolean = true;
function getTotal(qty: number, cost: number): number { return qty * cost; }
      </code></pre>
      <p>Total price = ${3 * 120}</p>`;
      break;

    case "async":
      lesson.innerHTML = `
      <h2>Async & Promises</h2>
      <p>Simulating fetching vegetables using async/await.</p>
      <pre><code>
async function fetchVeggies() {
  return new Promise(resolve => 
    setTimeout(() => resolve(["Cabbage", "Carrot"]), 1000)
  );
}
      </code></pre>
      <ul id="asyncList"><li>Loading...</li></ul>`;
      simulateFetch();
      break;

    case "data":
      lesson.innerHTML = `
      <h2>Data Structures – Map, Set, Object</h2>
      <pre><code>
const set = new Set(["Tomato", "Onion", "Tomato"]);
const prices = new Map([["Tomato", 80], ["Carrot", 60]]);
      </code></pre>
      <p>Unique: Tomato, Onion</p>
      <p>Tomato price: 80</p>`;
      break;

    case "dom":
      lesson.innerHTML = `
      <h2>DOM Manipulation – Add to Cart</h2>
      <div class="flex-box">
        <input id="vegInput" placeholder="Enter vegetable">
        <button id="addBtn">Add</button>
      </div>
      <ul id="cart"></ul>`;
      setupCart();
      break;

    case "interfaces":
      lesson.innerHTML = `
      <h2>Interfaces & Tuples</h2>
      <pre><code>
interface Veggie { name: string; price: number; }
let order: [string, number] = ["Tomato", 3];
      </code></pre>
      <p>Ordered 3 Tomatoes</p>`;
      break;

    case "generics":
      lesson.innerHTML = `
      <h2>Generics & Omit</h2>
      <pre><code>
interface Veggie { name: string; price: number; organic: boolean; }
function addToCart<T>(item: T): T[] { return [item]; }
      </code></pre>
      <p>Added Organic Carrot 🥕</p>`;
      break;
  }
}

function simulateFetch() {
  const list = document.getElementById("asyncList");
  if (!list) return;
  setTimeout(() => {
    list.innerHTML = "<li>Cabbage</li><li>Carrot</li>";
  }, 1000);
}

function setupCart() {
  const cart = document.getElementById("cart");
  const input = document.getElementById("vegInput");
  const btn = document.getElementById("addBtn");

  btn.addEventListener("click", () => {
    const item = document.createElement("li");
    item.textContent = input.value;
    cart.appendChild(item);
    input.value = "";
  });
  cart.addEventListener("dblclick", e => e.target.remove());
}
