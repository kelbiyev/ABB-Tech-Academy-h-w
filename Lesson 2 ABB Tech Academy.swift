//Task 1 - Login System
print("        Task 1        \n")

var isLoggedIn = true
var isAdmin = false

if isLoggedIn && !isAdmin
{
	print("Access granted")
} 
else
{
	print("Access denied")	
}

var hasPermission = true

if hasPermission || isAdmin
{
	print("Access granted")
}
else
{
	print("Access denied")
}


print("\n______________________\n")


//Task 2- Managing User Input
print("        Task 2        \n")

var username = "swiftCoder"
username.append("123")

print(username)

var index = username.index(username.startIndex, offsetBy: 5)
username.insert("_", at: index)
print(username)

username.removeLast(3)
print(username)

var userHasPrefix = username.hasPrefix("swift")
var userHasSuffix = username.hasSuffix("123")

print("First: \(username.prefix(3)), Last: \(username.suffix(2))")


print("\n______________________\n")


//Task 3 - Student Record
print("        Task 3        \n")

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


print("\n______________________\n")


//Task 4 - Organizing Student data
print("        Task 4        \n")

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


print("\n______________________\n")


//Task 5 - Number Analyzer
print("        Task 5        \n")

for number in 1...10 
{
	if number % 2 == 0
	{
		print("\(number) is even")
	}
	else
	{
		print("\(number) id odd")
	}
}

print("")

var num = 1
var iter = 0
while num <= 1000
{
	num *= 2
	iter += 1 
}

print("Iterations: \(iter)\n")


var i = 0
repeat {
	i += 1
	print("Processing...")
} while i < 3

print("")

var checkSign = -50
if checkSign > 0
{
	print("\(checkSign) is positive")
}
else if checkSign < 0
{
	print("\(checkSign) is negative")
}
else
{
	print("\(checkSign) is zero")
}


print("\n______________________\n")


//Task 6 - Registration Checker
print("        Task 6        \n")

var name: String? = "Elvin"
var age: Int? = nil
var email: String? = "elvin@mail.com" 
print("Name: \(name) , Age: \(age) , Email: \(email)")

print("")

if let names = name
{
	print("Name: \(names)")
}
else
{
	print("Informations about name is not provided")
}

if let ages = age
{
	print("Age: \(ages)")
}
else
{
	print("Informations about age is not provided")
}

if let emails = email
{
	print("Email: \(emails)")
}
else
{
	print("Informations about email is not provided")
}

print("")

email = nil

if let names = name
{
	print("Name: \(names)")
}
else
{
	print("Informations about name is not provided")
}

if let ages = age
{
	print("Age: \(ages)")
}
else
{
	print("Informations about age is not provided")
}

if let emails = email
{
	print("Email: \(emails)")
}
else
{
	print("Informations about email is not provided")
}

print("")

let userEmail = email ?? "No email registered"
print ("User Email: \(userEmail)")

print("")

var nickname: String? = nil 
if let nickName = nickname ?? name
{
	if nickname == nil
	{
		print("Using name as nickname: \(nickName)")
	}
	else
	{
		print("Nickname: \(nickName)")
	}
}
else
{
	print("No name or nickname")
}


print("\n______________________\n")


//Task 7 - Grade Analyzer
print("        Task 7        \n")

var gradesClassify = [95, 80, 100, 67, 88, 92]
for gradesCycle in gradesClassify
{
    if gradesCycle <= 100 && gradesCycle >= 90
	{
        print("\(gradesCycle): Excellent")
    } 
	else if gradesCycle < 90 && gradesCycle >= 80 
	{
        print("\(gradesCycle): Good")
    } 
	else 
	{
        print("\(gradesCycle): Needs Improvement")
    }
}

print("")

var optionalGrades: [Int?] = [95, 80, nil, 67, 88]
for og in optionalGrades
{
	if let g = og
	{
		print("Optional grade: \(g)")
	}
	else
	{
		print("Nil")
	}
}

print("")

var sum = 0
var count = 0
for opt in optionalGrades
{
	if let j = opt
	{
		sum += j
		count += 1
	} 
}

var avg: Double = 0
if count == 0
{
	avg = 0
	print("Average:" , avg)
}
else
{
	avg = Double(sum) / Double(count)
	print("Average:", avg)
}