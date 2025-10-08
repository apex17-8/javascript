//class name,constructor,
//encaspulation is the process of hiding certain information from the user
//encapsulation is keeping data safe from outside world.
class Owner {
  private licenseNumber: string; // hidden info
  public name: string;
  public carsOwned: number;

  constructor(name: string, license: string) {
    this.name = name;
    this.licenseNumber = license;
    this.carsOwned = 0;
  }

  public buyCar(): void {
    if (this.verifyLicense()) {
      this.carsOwned++;
      console.log(`${this.name} bought a new car. Total: ${this.carsOwned}`);
    }
  }

  private verifyLicense(): boolean {
    console.log('Verifying driver license...');
    return this.licenseNumber.length > 0;
  }
}

const owner = new Owner('John', 'K12345');
owner.buyCar();
// owner.licenseNumber ❌ can't be accessed outside
