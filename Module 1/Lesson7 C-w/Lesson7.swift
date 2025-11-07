//import UIKit 

//ARC(automatic reference counting)


/*
class Person {
    var name: String
    var apartment: Apartment?

    init(name:String) {
        self.name = name
        
        print("\(name) is initialized")
    }
}

var person: Person? = Person(name: "Salim")
var secondPerson: Person? = person
person = nil
//reference count dropped to 1
secondPerson = nil
//reference count dropped to 0
// object deinitialized


/*
do {
    var person: Person? = Person(name: "Salim")
    var secondPerson: Person? = person
}
//automatically deinitializes
*/


/*
do {
    var secondPerson: Person? = person
    person = nil
}
//also automatically deinits
*/
*/


/*
class Person {
    var name: String
    var apartment: Apartment?

    init(name:String) {
        self.name = name
        
        print("\(name) is initialized")
    }
}

class Apartment {
    let number: Int
    var tenant: Person?

    init(number: Int) {
        self.number = number

        print("\(number) apartment is initialized")
    }

    deinit {
        print("Apartment \(number) is deinitialized")
    }
}

var john: Person?
var apartment45 : Apartment?

john = Person(name: "John")
apartment45 = Apartment(apartment: 45)

john!.apartment = apartment45
apartment45!.tenant = john 

john = nil
apartment45 = nil
//stays initialized because of reference to each other

//         /\
//         ||
//Strong Reference Cycles

*/


/*
class Person {
    var name: String
    var apartment: Apartment?

    init(name:String) {
        self.name = name
        
        print("\(name) is initialized")
    }
}


class Apartment {
    let number: Int
     weak var tenant: Person?

    init(number: Int) {
        self.number = number

        print("\(number) apartment is initialized")
    }

    deinit {
        print("Apartment \(number) is deinitialized")
    }
}

john = Person(name: "John")//arc for person 1
apartment45  = Apartment(number: 45)//arc for apartment 1

john!.apartment = apartment45 //ars for apartment 2
apartment!.tenant = john //arc for person stays 1, because reference from tenant to the person 

john = nil 
apartment45 = nil


//         /\
//         ||
//Weak Reference Cycles
*/



/*
class Customer {
    var name: String
    var creditCard: CreditCard?
    init(name:String) {
        self.name = name
        print("Customer \(name) is initialized")
    }
    deinit {
        print("Customer \(name) deinitialized")
    }
}
class CreditCard {
    let number: String
    unowned let customer: Customer

    init(number: String , customer: Customer) {
        self.number = number
        self.customer = customer
        print("CreditCard \(number) initialized")
    }
    deinit {
        print("CreditCard \(number) deinitialized")
    }
}

var customer: Customer?
customer = Customer(name: "John")

customer?.creditCard = CreditCard(number:"12323" , customer: customer!)

customer = nil

//         /\
//         ||
//UNOWNED Reference Cycles
*/


/*
var x = 10

let closure = {
    print(x)
}
x = 20 
closure()

var y = 5
let secondClosure = { [y] in
    print(y)
}

y = 30
secondClosure()
*/

class Animal {
    var name: String = "Tom"
    private(set) var command: () -> Void = { }
    
    func learnCommand() {
        command = { [weak self] in
            guard let self else { return } //guard let self = self else { return }
            
            print(self.name)
        }
    }
    
    deinit{
        print("\(name) is deinitialized")
    }
}

do {
    var pet: Animal? = Animal()
    pet?.learnCommand()
    pet?.command()
    pet = nil
}

