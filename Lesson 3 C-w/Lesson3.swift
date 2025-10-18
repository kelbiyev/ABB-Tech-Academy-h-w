/*

//import UIKit

var number = 0

/*
if number > 0
{
    print("Positive number")
}
else if 
{

}
else
{

}

*/

/*
let grade = 78

switch grade  {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")    
default:
    print("F")
}

let point = (10,20)

switch point {
    case (let x, 0):
        print("x is \(x)")
    case (0 , let y):
        print("y is \(y)")
    case(let x, let y) where x == y:
        print("X is equal to Y")
    /*case let(x,y)...*/

}

*/

for num in 1...10 { if num == 5 { break } }

for num in 1...10 
{
    if num % 2 == 0 { continue }
    print(num)
}

let number1 = 7
var description: String = "Number is"
switch number1 {
case 2, 3, 5, 7:
    description += " prime"
    fallthrough
case 0...5:
    description += " ,"
default:
    description += " integer"
}

print(description)

*/

func  greetPerson(_ name: String) 
{    
    print("Hello, \(name)!")
    print("How are you?")

}

greetPerson("Salim")

func greetPerson(country: String)
{
    print(country)
}

greetPerson(country: "Azerbaijan")

func add(a: Int, b: Int) -> Int 
{

    return a + b
}

var addOperation = add

addOperation(10,20)

func doSomething(a: String, completion: () -> Void)
{
    print("A is \(a)")
    completion()
}

func sendNotification(_ time: Int)
{
    print("Notification Sent")
    
    func sendSMS(){}
}
/*
doSomething(a: "Some Text" , completion: sendNotification)
*/

doSomething(a: "Aysel") { number in 
    print("Notification sent \(time) second ago")\
}


/*
enum Direction {
    case north //also case north, east, south, west
    case south
    case east 
    case west 
}
*/

enum Direction: CaseIterable 
{
    case north, east, south, west
}

let numberOfDirection = Direction.allCases.count

for direction in Direction.allCases
{
    print(direction)
}

enum CoffeeSize: String, CaseIterable {
    case small = "S"
    case medium = "M"
    case large = "L"
}

let largeSize = CoffeeSize.large.rawValue
print(largeSize)


enum Planet
{
    case mercury = 1
    case venus
    case east
}

let earthOrbitNumber = Planet.earth.rawValue

print(earthOrbitNumber)

enum NetworkResponse {
    case success(data: String)
    case failure(errorCode: Int)
}

var networkResponse: NetworkResponse = .failure(errorCode: 404)

switch networkResponse{
    case .success(data: let data):
        print("Success: \(data)")
    case .failure(errorCode: let errorCode):
        print("Failure with error Code: "\(errorCode))
}

let LargeSize = CoffeeSize(rawValue: "L") 