//import UIKit

var students: [String: Int] = [
    "Salim": 85,
    "Max": 55,
    "Daniil": 73,
    "Ali": 48
]

func evaluatePerformance(of students: [String: Int], passingScore: Int = 60) -> Int {
    var passedCount = 0
    
    for (name, score) in students 
    {
        print("\(name): \(score) score")
        if score >= passingScore 
        {
            print("\(name) passed exam")
            passedCount += 1
        } 
        else 
        {
            print("\(name) failed exam.")
        }
    }
    
    print("\n Overall number of passed: \(passedCount)")
    return passedCount
}

let totalPassed = evaluatePerformance(of: students)
