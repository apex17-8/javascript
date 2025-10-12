//An interface in TypeScript defines the structure (shape) of an object — 
//what properties and methods it should have — without providing implementation.
interface Student {
  name: string;
  studentId: number;
  gradeLevel: string;

  // method signature (no implementation here)
  calculateAverage(grades: number[]): number;
}
class HighSchoolStudent implements Student {
  name: string;
  studentId: number;
  gradeLevel: string;

  constructor(name: string, studentId: number, gradeLevel: string) {
    this.name = name;
    this.studentId = studentId;
    this.gradeLevel = gradeLevel;
  }

  // implementing the interface method
  calculateAverage(grades: number[]): number {
    const total = grades.reduce((sum, grade) => sum + grade, 0);
    return total / grades.length;
  }

  displayInfo() {
    console.log(`${this.name} (ID: ${this.studentId}) is in ${this.gradeLevel}`);
  }
}
const student1 = new HighSchoolStudent("Mary", 101, "Form 4");

student1.displayInfo(); // Mary (ID: 101) is in Form 4

const avg = student1.calculateAverage([80, 90, 85, 95]);
console.log(`Average grade: ${avg}`);
