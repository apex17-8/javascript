//Abstraction is the process of hiding the internal details (how something works)
 //and showing only the essential features (what it does).
//It allows you to focus on what an object does, not how it does it.
abstract class Student {
  name: string;
  studentId: number;

  constructor(name: string, studentId: number) {
    this.name = name;
    this.studentId = studentId;
  }

  // Abstract method → no body, must be implemented by subclasses
  abstract calculateAverage(grades: number[]): number;

  // Normal method → shared by all subclasses
  displayInfo(): void {
    console.log(`${this.name} (ID: ${this.studentId})`);
  }
}
//Student is an abstract class → you can’t create an object directly from it.

//calculateAverage() is abstract → every child must define its own version.

//displayInfo() is concrete → it’s common to all students.

class HighSchoolStudent extends Student {
  gradeLevel: string;

  constructor(name: string, studentId: number, gradeLevel: string) {
    super(name, studentId); // calls the parent constructor
    this.gradeLevel = gradeLevel;
  }

  // Implementation of the abstract method
  calculateAverage(grades: number[]): number {
    const total = grades.reduce((sum, grade) => sum + grade, 0);
    return total / grades.length;
  }

  // Optional: child-specific method
  showGradeLevel(): void {
    console.log(`${this.name} is in ${this.gradeLevel}`);
  }
}
const student1 = new HighSchoolStudent("Mary", 101, "Form 4");

student1.displayInfo();       // inherited concrete method
student1.showGradeLevel();    // child-specific method

const avg = student1.calculateAverage([80, 90, 85, 95]);
console.log(`Average grade: ${avg}`);
