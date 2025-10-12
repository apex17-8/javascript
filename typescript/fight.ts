class fighter{
    constructor(
        public style:string ,
        public power: string="flight",
        protected ID:number=12344,
        private secret_move:string="Wa chaa!"
        
    ){
    this.style=style="Kung fu",
    this.power=power, 
    this.ID=ID,
    this.secret_move=secret_move="Wa chaa!"


}
    /**
     * play
     */
    public play(secret_move:string):void{
        console.log(`The secret move is ${secret_move}`);
        
    }
}
const fighter1 = new fighter("Karate","invisibility",56789,"Dragon punch");
console.log(fighter1);
fighter1.play("Dragon punch");
// console.log(fighter1.ID); // Error: Property 'ID' is protected and only accessible within class 'fighter' and its subclasses.
// console.log(fighter1.secret_move); // Error: Property 'secret_move' is private and only accessible within class 'fighter'.