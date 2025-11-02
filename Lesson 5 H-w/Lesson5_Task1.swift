//import UIKit

class Student {
    var name: String
    var scores: [Int] {
        didSet{
            print("Scores updated: \(oldValue) -> \(scores)")
        }
    }
    var averageScore: Double {
        if scores.isEmpty {
            return 0.0
        }
        let total = scores.reduce(0, +)
        return Double(total) / Double(scores.count)
    }
    
    static let passingGrade = 50.0

    var isPassing: Bool {
        return averageScore >= Student.passingGrade
    }

    init(name: String, scores: [Int]) {
        self.name = name
        self.scores = scores
    }

}

let student = Student(name: "Salim" , scores: [100,95,98,99])
print("Average score: \(student.averageScore)")
print("Is passing? \(student.isPassing)")

student.scores = [50,45,54]
student.scores = [70,80,30]

