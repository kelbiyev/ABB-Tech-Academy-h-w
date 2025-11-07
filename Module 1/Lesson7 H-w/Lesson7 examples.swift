/*
let key = 10 //Swift understands that the type is Int
let message = "Hello world" //also understands that it is String and etc

let constant: String
let moneyCOunt: Int
//We ANNOTATE with :(Type)

let tuple = ("Salim" , 25)
print(tuple.0)
print(tuple.1)

let someone = (name:"Someone", age: 20)
print(tuple.name)
print(tuple.age)
*/

func hello(string: String = "World!"){
    print("Hello \(string)")
}

hello() //will return Hello World
hello(string: "Salim")// will return  hello Salim