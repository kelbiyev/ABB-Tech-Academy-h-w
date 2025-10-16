//import UIKit

var students = ["Alice", "Bob", "Jane", "Alice"]
print("\(students.count) \n")

students.append("Ken")
if let index1 = students.firstIndex(of: "Bob")
{
	students.remove(at: index1)
}

print("Updated students: \(students) \n")

print("Uppercased names\n")
for name in students
{
	print(name.uppercased())
}

if students.contains("Jane")
{
	print("\nArray contains 'Jane'")
}

var uniqueStudents = Set(students)
print("\nArray: \(students) ")
print("Set: \(uniqueStudents) \n")
//The difference between Array and Set is, that Set keeps only unique values and unordered
//Array contains all the values and saves ordered 

uniqueStudents.insert("Mark")
print(uniqueStudents)
if uniqueStudents.contains("Alice")
{
	print("\nSet contains 'Alice'\n")
}

var grades = [
	"Alice": 95,
	"Mark": 80,
	"Jane": 87
]
print("Alice - \(grades["Alice"] ?? 0) points \n")

grades["Ken"] = 92
grades["Mark"] = 85

print("Updated dictionary\(grades)\n")

if let searchStudents: String? = "Alice"
{
	print("Alice - \(grades["Alice"] ?? 0)\n")
}
else
{
	print("No grade avalaible\n")
}