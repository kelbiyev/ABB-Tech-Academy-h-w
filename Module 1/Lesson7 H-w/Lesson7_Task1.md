# Lesson 7 prep for interview answers
### 1.What are the main differences between let and var in Swift?
The main difference is that var is mutable

______________________________________
### 2.What are type inference and type annotation in Swift?
Both of them are key concepts

- #### Type Inference:
```
let key = 10 //Swift understands that the type is Int
let message = "Hello world" //also understands that it is String and etc
```
- #### Type annotation:
```
let constant: String
let moneyCOunt: Int
//We ANNOTATE with :(Type)
```
______________________________________

### 3.What is a tuple, and how can you use it to return multiple values from a function?
In Swift tuple is "Container" that can group multiple values

We can return its values 
- #### by index:
```
let tuple = ("Salim" , 25)
print(tuple.0)
print(tuple.1)
```
- #### by name of element
```
let someone = (name:"Someone", age: 20)
print(tuple.name)
print(tuple.age)
```
______________________________________

### 4.How does Swift ensure type safety?

Swift ensures type safety by type system at runtime and compile time

### 5.What are default parameter values in functions and how do you use them?
The default parameters values are
```
func hello(string: String = "World!"){
    print("Hello \(string)")
}

hello() //will return Hello, World!
hello(string: "Salim")// will return  Hello Salim
```
______________________________________
### 6.What does it mean that functions are “first-class citizens” in Swift?
Fist-class citizens means that functions are referenced as any other type
______________________________________
### 7.What is a higher-order function?
Higher-order function is function that 
- can use another func as an argument a
- returns another func
____________________________________
### 8.What higher-order functions do you know?
Calculator can be higher-order function because it can use another func as an aregument or as a logic
______________________________________
### 9.What is an inout parameter and when should you use it?
inout parameter in func is taking an argument doing some func logic on it and return the value 
```
func function(_ num: inout Int) {
    num += 10 
}

var number = 10
function(&number)
print(number)
```
______________________________________
### 10.What are optionals in Swift and why do they exist?
```
var someString: String? = nil
```

if the string exists it will use the string, but if it nil it will show Optional(nil)
______________________________________
### 11.How do you safely unwrap an optional in Swift?
for safely unwrap we use
```
var someString: String? = "Salim"
if let safe = someString {...} else {...} 
```
______________________________________
### 12.What is the difference between ! and ? when dealing with optionals?
**?** used for *safe* unwrap 
**!** used for *force* unwrap only if we know that value is not **nil**
______________________________________
### 13.What is optional chaining and how does it work?
Cannot tell what it is but can show
```
class Person {
    var car: Cars?
}
class Cars {
    var carsAmount = 2
}

let salim = Person()
```
here salim.car is optional. He can have a car or cannot

salim.car?.carsAmount is optional chaining
______________________________________
### 14.What is the purpose of nil coalescing operator (??)?
If the optional is *nil* it will use default value (if exists first value if not default value)
______________________________________
### 15.What are the main differences between classes and structs in Swift?
The main difference that *classes* are **reference type**, *structs* are **value type**
______________________________________
### 16.What is the difference between value and reference types?
value type doesn't need an initialization because structs have on their logic own initializion, but classes are in need of the initialization
______________________________________
### 17.What does the final keyword mean and when is it used?
final shows that any other class cannot use the interitance of final class
______________________________________
### 18.Are closures reference or value types?
Closures are reference type because you pass the reference of type when you use it
______________________________________
### 19.What is an enum and how is it used in Swift?
enum is a type that defines the group of values
```
enum Direction {
    case north
    case south
    case west
    case east
}

let northDirection: Direction = .north
```
or
we did some tasks using enum that was used for 
```
enum Direction {
    case north, south, west, east
}

let direction = Direction

switch direction{ 
case .north: 
    print("North")
case .west: 
    print("West")
case .east: 
    print("East")
default:
    print("South")
}
```
______________________________________
### 20.What is a raw value and an associated value in enums?
rawValue is constant value assigned to each case with the same type
```
enum Planet: Int {
    case mercury = 1, venus, earth, mars
}

let earthOrder = Planet.earth.rawValue //3
```

assosiated value store extra data for each case
______________________________________
### 21.Can you explain what a protocol is and how it is used in Swift?
A protocol defines methods, properties, and requirements for a type. Can be used for classes, structs and enums 
```
protocol Vehicle {
    var speed: Double { get set }
    func accelerate()
}

struct Bus: Vehicle {
    var speed: Double = 0
    func accelerate() {
        print("Accelerating to \(speed + 10)")
    }
}

```
______________________________________
### 22.How can you provide a default implementation or default behavior for a method or property defined in a protocol?
by using protocol extensions to give default implementations.

```
protocol Greetable {
    func greet()
}

extension Greetable {
    func greet() {
        print("Hello from default implementation!")
    }
}

struct Person: Greetable {}
let p = Person()
p.greet() 
```
______________________________________
### 23.How do extensions work in Swift and what are they commonly used for?
extension позволяет добавить функционал для существующих классов струтур или enums

common uses are for 
- adding computed properties , methods
- for protocols
- adding initalizers
______________________________________
### 24.What Access Modifiers do you know in Swift?
filename public private open and internal
______________________________________
### 25.What is the difference between open and public?
Open can be accessed and overriden from any other module
Public can be accessed form other modules but cannot be overriden outside
______________________________________
### 26.What is the purpose of using a private or fileprivate modifier?
private restricts access to the current scope (inside class or struct)
fileprivate restricts access to the current Swift file.
______________________________________
### 27.How can access control improve code maintainability?
Access control makes code safier and easier 
______________________________________
### 28.Can you tell us how ARC works?
its kinda memory management system. it automatically counts references for each object
______________________________________
### 29.What is a “retain cycle” and how can you prevent it?
`retain cycle` happens when more than two object keep strong references to each other
we can prevent retain cycle by using 
- `weak` var
- `unowned` let
______________________________________
### 30.What is the difference between weak and unowned references?
`weak` can become a nil
`unowned` cant become nil because it avoid cycles when its guaranteed
______________________________________
### 31.What does the lazy keyword do?
lazy allocates or computes property when only at its initialization 
______________________________________
### 32.What are the main differences between Array, Set, and Dictionary in Swift?
Array is an ordered collection , can contain duplicates and keeps the order
Set is an unordered collection , keeps only unique elements and automatically deletes duplicates 
Dictionary stores key-value pairs , where each key is unique
______________________________________
### 33.What are property observers (willSet, didSet) and when are they useful?
property observers let us run code 
- when value has just changed (didset) (runs after new stored value) 
- when value will change 
(willset) (runs before new stored value)

They are useful when you want to update log changes and etc.
______________________________________
### 34.How can you avoid retain cycles when using closures?
to avoid retain cycles using closures we can use capture list `[weak self]` or `[unowned self]`
______________________________________
### 35.What is inheritance, and can structs use inheritance?
Inheritance allows one class to inherit properties or methods from another class

only classes can use inheritance

sturcts and enums cant use inheritance but they can use protokol to "inherit"
______________________________________
### 36.What is method overriding, and when do you use the override keyword?
override allows us to replace the originally behavior while we use inheritance

it can be used when you want to save the action but in a different way than the "parent"
______________________________________
### 37.How would you prevent a class from being subclassed?
we can prevent subclassing with `final class ... {}`
also final can be used for methods or properties to prevent them from being overrided
______________________________________
### 38.What are the four main principles of Object-Oriented Programming (OOP), and how are they implemented in Swift?

- `encapsulatuon` making properties `private` so they cant be changed outside 
- `polymorphism` allows different classes to respond to the same method(action)in different way 
- `inheritance` lets one class use or exend behavior of another 
- `abstraction` shows us what protocol does not how