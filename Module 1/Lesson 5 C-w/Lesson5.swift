//import UIKit
//Classes and Structs

/*
struct Person {
    var name: String = "Someone"
    var age: Int
    var job: String?
}

var firstPerson = Person(name: "Salim" , age: 19)
var secondPerson = Person(age:20)
var thirdPerson = Person(name: "Tair" , age: 25 , job: "Banker")

print(firstPerson)
print(secondPerson)
print(thirdPerson)


class Persona {
    var name: String = ""
    var age: Int = 0
    init(name: String , age: Int) {
        self.name = name
        self.age = age
        // fault because swift doesnt understand which name we use variable or let (name = name) 
    }
}

var personClassInstance = Persona(name: "Alice" , age: 18)
print(personClassInstance)

//class reference type
//struct value type

*/

/*

struct Person {
    var name: String
    var age: Int
    var job: String?
    var score: Int
    init(_ name: String, age: Int , job:  String? , score: Int){
        self.name = name
        self.age = age
        self.job = job
        self.score = 0
    }
    func sayMyName()
    {
        print(name)
    }
}

var firstPerson = Person(name: "Salim" , age: 19, job: "Student")
var secondPerson = Person(name: "Alice" ,age:20, job: "unknown")
var thirdPerson = Person(name: "Tair" , age: 25 , job: "Banker")

print(firstPerson)
print(secondPerson)
print(thirdPerson)

*/


/*
struct Counter {
    var value: Int = 0

    //MUTATING FUNC we should write only in STRUCT , no need to write MUTATING in CLASS
    mutating func increment()
    {
        value += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
counter.increment()

print(counter.value)

*/


/*
//COMPUTED PROPERTY
struct Rectangle {
    var width: Double
    var lenght: Double

    var area: Double {
        width * lenght
    }
}

let rectangle = Rectangle(width: 10 , lenght: 20)

print(rectangle.area)


struct CartItem {
    var name: String
    var unitPrice: Double
    var quantity: Int
    
    var totalPrice: Double {
        get {
            unitPrice * Double(quantity)
        }
        set (newTotalPrice) {
            quantity = Int(newTotalPrice / unitPrice)
        }   
    }
}

var item = CartItem(name: "Headphone", unitPrice: 50 , quantity: 2)

item.totalPrice
item.totalPrice = 1000
item.quantity

*/


/*
//PROPERTY OBSERVERS

class StepCounter {
    var totalSteps: Int = 0 {
        willset{
            print("LOG: About to change total steps \(newValue)")
        }
        didSet{
            print("LOG: Total steps changed \(oldValue) -> \(totalSteps)")
        }
    }
}

let stepCounter = StepCounter()
StepCounter.totalSteps = 100

*/

/*
//LAZY VAR

struct PhotoGallery {
    var name: String
    //(lazy var) when i need to create a var 
    //lazy cannot be used as computed property but you can use closures to give some funcs for it
    lazy var photos: [String] = {
        print("Photos for gallery \(name)")
        return ["", "", ""]
    }()
       
}

func createImages() -> [String] {
        return ["","",""]
}

var photosCreation = createImages
var photos: [String] = []

photosCreation = {
    return [""]
}

photos = {
    return [""]
}()

*/


/*
struct Human {
    var name: String
    var computedIq: Double{
        Double.random(in:0...200)
    }
    lazy var iq: Double = {
        Double.random(in: 0...200)
    }()
}

let human = Human(name: "John")
print(human.computedIq)
print(human.computedIq)

print(human.iq)
print(human.iq)
*/


//Type Property

struct BankAccount {
    static var interestRate: Double = 0.05
    var owner: String
    var balance: Double
    var balanceWithInterest: Double {
        balance * (balance * BankAccount.interestRate)
    }
    
    func displayBalance() {
        print("\(owner) balance: \(balance)")
        print("With Interest: \(balanceWithInterest)")
    }

    static func updateInteresRate() {


        print("Interes rate updated ")
    } 
}

var myAccount = BankAccount(owner: "Salim" , balance: 100)
var secondAccount = BankAccount(owner: "Bro" , balance: 300)
var thirdAccount = BankAccount(owner: "Nobody" , balance: 400)

//BankAccount.interestRate = 0.02

myAccount.displayBalance()
secondAccount.displayBalance()
thirdAccount.displayBalance()