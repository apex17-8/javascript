//class is a blueprint of an object
//object is an instance of a class
//class can have properties and methods
//properties are the characteristics of the class
//methods are the actions that the class can perform
//class name, attributes,constructor, methods,imlementation(object creation)
//student(asha)adm number,name,grade.
var student = /** @class */ (function () {
    function student(name, complexion, attendance, progress, gender, admnumber) {
        this.name = name;
        this.complexion = complexion;
        this.attendance = attendance;
        this.progress = progress;
        this.gender = gender;
        this.admnumber = admnumber;
    }
    student.prototype.display = function () {
        console.log("My students name is ".concat(this.name, " and his complexion is ").concat(this.complexion, ".His attendance is ").concat(this.attendance, " and his progress is ").concat(this.progress, ".He is a ").concat(this.gender, " and the admission number is ").concat(this.attendance));
    };
    return student;
}());
var student1 = new student('John', 'dark', true, 'good', 'male', 120);
student1.display();
var student2 = new student('Alex', 'chocolate', false, 'excellent', 'male', 980);
student2.display();
var student3 = new student('Asha', 'brown', true, 'average', 'female', 970);
student3.display();
