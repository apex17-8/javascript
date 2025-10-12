var fighter = /** @class */ (function () {
    function fighter(style, power, ID, secret_move) {
        if (power === void 0) { power = "flight"; }
        if (ID === void 0) { ID = 12344; }
        if (secret_move === void 0) { secret_move = "Wa chaa!"; }
        this.style = style;
        this.power = power;
        this.ID = ID;
        this.secret_move = secret_move;
        this.style = style = "Kung fu",
            this.power = power,
            this.ID = ID,
            this.secret_move = secret_move = "Wa chaa!";
    }
    /**
     * play
     */
    fighter.prototype.play = function (secret_move) {
        console.log("The secret move is ".concat(secret_move));
    };
    return fighter;
}());
var fighter1 = new fighter("Karate", "invisibility", 56789, "Dragon punch");
console.log(fighter1);
fighter1.play("Dragon punch");
// console.log(fighter1.ID); // Error: Property 'ID' is protected and only accessible within class 'fighter' and its subclasses.
// console.log(fighter1.secret_move); // Error: Property 'secret_move' is private and only accessible within class 'fighter'.
