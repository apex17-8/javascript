//class is a blueprint of an object
//object is an instance of a class
//class can have properties and methods
//properties are the characteristics of the class
//methods are the actions that the class can perform
//class name, attributes,constructor, methods,imlementation(object creation)
//student(asha)adm number,name,grade.
class student{
    name:string;
    complexion:string;
    attendance:boolean;
    progress:string;
    gender:string;
    admnumber:number;
     constructor(name:string,complexion:string,attendance:boolean,progress:string,gender:string,admnumber:number){
        this.name=name;
        this.complexion=complexion;
        this.attendance=attendance;
        this.progress=progress;
        this.gender=gender
        this.admnumber=admnumber
     }
    display(){
        console.log(`My students name is ${this.name} and his complexion is ${this.complexion}.His attendance is ${this.attendance} and his progress is ${this.progress}.He is a ${this.gender} and the admission number is ${this.attendance}`);
        
    }
        
     }


const student1=new student('John','dark',true,'good','male',120);
student1.display();
const student2=new student('Alex','chocolate',false,'excellent','male',980);
student2.display();
const student3= new student('Asha','brown',true,'average','female',970)
student3.display();
