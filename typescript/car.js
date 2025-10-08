//classes and objects
//in javascript you dont use types but in typescript you use types
//define a class named Car
var Car = /** @class */ (function () {
    //fuelLevel: string | number;
    //initialize the class with constructor which is a special method called when an object is created from the class
    function Car(brand) {
        this.brand = brand;
        this.fuelLevel = 0;
        this.type = 'Sedan';
        this.color = 'Red';
        this.owner = 'yamoto priest';
        this.mileage = 0;
    }
    //methods of the class car are refuel and drive
    Car.prototype.refuel = function () {
        this.fuelLevel += 10;
        console.log("".concat(this.brand, " refueled. Fuel level: ").concat(this.fuelLevel));
    };
    Car.prototype.drive = function () {
        if (this.fuelLevel > 5) {
            console.log("".concat(this.brand, " is driving on the road \uD83D\uDE97\uD83D\uDCA8"));
            this.fuelLevel -= 5;
        }
        else {
            console.log("".concat(this.brand, " needs fuel first \u26FD"));
        }
    };
    return Car;
}());
// Create car object (instance)
var toyota = new Car('Toyota');
toyota.refuel();
toyota.drive();
