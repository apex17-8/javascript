//class name,constructor,
//encaspulation is the process of hiding certain information from the user
//encapsulation is keeping data safe from outside world.
var Owner = /** @class */ (function () {
    function Owner(name, license) {
        this.name = name;
        this.licenseNumber = license;
        this.carsOwned = 0;
    }
    Owner.prototype.buyCar = function () {
        if (this.verifyLicense()) {
            this.carsOwned++;
            console.log("".concat(this.name, " bought a new car. Total: ").concat(this.carsOwned));
        }
    };
    Owner.prototype.verifyLicense = function () {
        console.log('Verifying driver license...');
        return this.licenseNumber.length > 0;
    };
    return Owner;
}());
var owner = new Owner('John', 'K12345');
owner.buyCar();
// owner.licenseNumber ❌ can't be accessed outside
