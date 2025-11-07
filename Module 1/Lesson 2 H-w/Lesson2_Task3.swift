//import UIKit

var student = (name: "Alice", age: 21, grade: "A")
print(student.0)
print(student.1)
print(student.2) 

print(student.name)
print(student.age)
print(student.grade)

student.grade = ("A+")
print("Updated grade: \(student.grade)")

var student1 = (name: "Salim", age: 19, grade: "A+")

if student.age > student1.age
{
	print("\(student.name) is older than \(student1.name)")
}
else
{
	print("\(student.name) is younger than \(student1.name)")	
}

(student, student1) = (student1, student)
print(student)
print(student1)