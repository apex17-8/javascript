abstract class animal{
    abstract makeSound(): void;
    move(){
        console.log("animal is moving");
    }
}
class dog extends animal{
    makeSound(): void {
        console.log("bark");
    }
}