//parent class,constructor,methods
//child class,constructor,methods
//child inherits parent properties and methods


class Vehicle {
  brand: string;
  constructor(brand: string) {
    this.brand = brand;
  }
  start(): void {
    console.log(`${this.brand} vehicle started`);
  }
}

class ElectricCar extends Vehicle {
  batteryLevel: number;
  constructor(brand: string) {
    super(brand); // calls Vehicle constructor
    this.batteryLevel = 100;
  }

  start(): void {
    console.log(`${this.brand} electric car started silently ⚡`);
  }

  charge(): void {
    console.log(`${this.brand} is charging 🔋`);
  }
}

class DieselCar extends Vehicle {
  fuel: number;
  constructor(brand: string) {
    super(brand);
    this.fuel = 50;
  }

  start(): void {
    console.log(`${this.brand} diesel engine roaring 🛻💨`);
  }

  refuel(): void {
    console.log(`${this.brand} refueled ⛽`);
  }
}

const tesla = new ElectricCar('Tesla');
const hilux = new DieselCar('Hilux');

tesla.start();
hilux.start();
