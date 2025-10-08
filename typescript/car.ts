//classes and objects

//in javascript you dont use types but in typescript you use types
//define a class named Car
class Car {
  brand: string;
  fuelLevel: number;
  type: string;
  color: string;
  owner: string;
  mileage: number

  //fuelLevel: string | number;
//initialize the class with constructor which is a special method called when an object is created from the class
  constructor(brand: string) {
    this.brand = brand;
    this.fuelLevel = 0;
    this.type = 'Sedan';
    this.color = 'Red';
    this.owner = 'yamoto priest';
    this.mileage = 0;
  }
//methods of the class car are refuel and drive
  refuel(): void {
    this.fuelLevel += 10;
    console.log(`${this.brand} refueled. Fuel level: ${this.fuelLevel}`);
  }

  drive(): void {
    if (this.fuelLevel > 5) {
      console.log(`${this.brand} is driving on the road 🚗💨`);
      this.fuelLevel -= 5;
    } else {
      console.log(`${this.brand} needs fuel first ⛽`);
    }
  }
}

// Create car object (instance)
const toyota = new Car('Toyota');
toyota.refuel();
toyota.drive();
