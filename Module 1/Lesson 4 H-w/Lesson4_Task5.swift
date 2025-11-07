//import UIKit

let ages = [12, 25, 17, 30, 41, 15]

let adults = ages.filter { $0 >= 18 }

let ageStrings = adults.map { "Age: \($0)" }

print(ageStrings)