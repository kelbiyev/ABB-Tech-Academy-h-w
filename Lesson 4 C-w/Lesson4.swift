//import UIKit

/*
func increaseScore(_ score: Int)
{
    var newScore = score + 10
    //score += 10 Fault because score is a parameter od func and its "let" score += 10
    print(score)
}

var playerScore = 100

increaseScore(100)
*/

/*
func increaseScore(_ score: inout Int) //inout func(&(var))
{
    score += 10
} 

var playerScore = 100
increaseScore(&playerScore)

print(playerScore)
*/


/*
func removeCharacter(_ c: Character, from s: inout String) -> Int 
{
    var count = 0

    while let index = s.firstIndex(of: c)
    {
        s.remove(at: index)
        count += 1
    }

    return count
}

var str = "Hello, world!"

let removedCount = removeCharacter("l" , from: &str)

print(str)
print(removedCount)
*/

/*
func calculateTotal(_ prices: Double...) -> Double 
{
    var total: Double = 

    return total   
}

let totalPrice = calculateTotal(20, 40, 45.7, 80)

print("Total prices: \(totalPrice)")

print("Total price" , totalPrice)
*/

/*
func average(_ numbers: Int...) -> Double
{
    if numbers.isEmpty 
    {
        print("No numbers provided")
        return 0
    }

    let sum = numbers.reduce(0, +)
    let avg = Double(sum) / Double(numbers.count)
    print("Average:" , avg)
    return avg
}

average(1,2,3,4,5,6,7,8,9,10)
average(20,40,60,0,15)
average()
*/

/*
func average(_ numbers: Int...)
{
    guard !numbers.isEmpty 
    else 
    {
        print("No numbers provided.")
        return
    }

    var total = 0
    for number in numbers
    {
        total += number
    }

    let result = Double(total) / Double(numbers.count)
    print("Average is \(result)")
}
*/


/*
func doSomething(_ action: () -> Void)
{
    print("Before doing something")
    action()
    print("After doing something")
}

func whatToDo()
{
    print("I'm doing something")
}

doSomething(whatToDo)
*/


/*
func doSomething(_ action: () -> Void)
{
    print("Before doing something")
    action()
    print("After doing something")
}

func whatToDo()
{
    print("I'm doing something")
}

let someVar = whatToDo
someVar()

doSomething(whatToDo)
*/

/*
//closures
let greet = {
    print("Hello!")
}
greet()

let greeting = { (name: String) -> () in 
    print("Hello! \(name)")
}

let square = { (num: Int) -> Int in
    return num * num
}

//also
//let square = { (num: Int) in num * num}

//also
//let square: (Int) -> Int = { num in num * num}
greeting("Salim")
square(5)

let addNumbers: (Int, Int) -> Int = { a, b in a + b}
let addNumber: (Int, Int) -> Int = { $0 + $1 }

addNumbers(10,20)


//trailing closure expression
func someFunction(a: Int , closure: () -> Void)
{
    print("LOG: something")
    closure()
}

someFunction(a: 5) {
    print("Do something from outside")
}
//

func fetchData(
    from url:String,
    onSuccess: (String) -> Void,
    onFailure: (String) -> Void

    
    )



fetchData(from: "example.com") { successMessage in 
    print("LOG: success: \(successMessage)")
} 
onFailure: { errorMessage in'
    print("LOG: failure: \(errorMessage)")}
*/

func repeatTask(times1: Int, task1: () -> Void)
{
    for _ in 1...times 
    {
        task1()
    }
}   
repeatTask(times: 3) {
    print("You can do it!")
}

func repeatTask1(times1: Int, task: @escaping () -> Void)
{
    for _ in 1...times 
    {
        task()
    }
}   
repeatTask1(times1: 3) {
    print("You can do it!")
}


let integers = [1, 2, 3, 4]
let new = integers.map { $0 * 2 }
let new1 = integers.filter {$0 % 2 == 0}
print(new)
print(new1)