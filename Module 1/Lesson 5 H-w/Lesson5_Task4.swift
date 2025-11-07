//import UIKit

class Employee {
    let name: String
    private var baseSalary: Double
    var bonusRate: Double
    

    init(name: String, baseSalary: Double, bonusRate: Double) {
        self.name = name
        self.baseSalary = baseSalary
        self.bonusRate = bonusRate
    }
    
    
    var finalSalary: Double {
        return baseSalary + (baseSalary * bonusRate)
    }
    
    
    func increaseBonus(by amount: Double) {
        guard amount > 0 else {
            print("Bonus increase must be positive.")
            return
        }
        bonusRate += amount
    }
    
    
    func summary() -> String {
        return "\(name): Final Salary = \(finalSalary)"
    }
}


var employees = [
    Employee(name: "Salim", baseSalary: 4000, bonusRate: 0.10),
    Employee(name: "Tair", baseSalary: 4500, bonusRate: 0.05),
    Employee(name: "Bro", baseSalary: 5000, bonusRate: 0.08)
]


employees[1].increaseBonus(by: 0.02)


for employee in employees {
    print(employee.summary())
}


if let highestPaid = employees.max(by: { $0.finalSalary < $1.finalSalary }) {
    print("\nHighest Paid: \(highestPaid.name) with salary \(highestPaid.finalSalary)")
}
