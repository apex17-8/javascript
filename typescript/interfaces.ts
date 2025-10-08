interface CarInterface {
  brand: string;
  drive(): void;
  refuel(): void;
}

interface Insurance {
  provider: string;
  renew(): void;
}

class Tesla implements CarInterface, Insurance {
  brand: string;
  provider: string;

  constructor(brand: string, provider: string) {
    this.brand = brand;
    this.provider = provider;
  }

  drive(): void {
    console.log(`${this.brand} is driving autonomously 🤖`);
  }

  refuel(): void {
    console.log(`${this.brand} is charging ⚡`);
  }

  renew(): void {
    console.log(`${this.brand} insurance renewed with ${this.provider}`);
  }
}

const myTesla = new Tesla("Tesla", "Britam Insurance");
myTesla.drive();
myTesla.renew();
