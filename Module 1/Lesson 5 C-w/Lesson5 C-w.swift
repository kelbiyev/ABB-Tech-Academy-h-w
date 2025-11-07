//import UIKit

/*
struct Device {
    var name: String
    var isOn: Bool
    var powerUsage: Double

    var statusMessage: String {
        if isOn {
            return "\(name) is ON, using \(powerUsage)W"
        } else {
            return "\(name) is OFF"
        }
    }

    mutating func toggle() {
        isOn.toggle()
        powerUsage = isOn ? 120 : 0
    }
}

var airConditioner = Device(name: "Air Conditioner", isOn: true, powerUsage: 0)

airConditioner.toggle()
print(airConditioner.statusMessage) 

airConditioner.toggle()
print(airConditioner.statusMessage) 

*/


class BankAccount {
    var owner: String
    var balance: Double = 0 {
        didSet{
            print("Balance updated: \(oldValue) -> \(balance)")
        }
    } 
    var transactionHistory: [String] = []

    lazy var report: String = {
        return "Generating account report for \(owner)"
    }()
    
    init(owner: String , balance: Double = 0.0){
        self.owner = owner
        self.balance = balance
    }
    
    func deposit(_ amount: Double) {
        balance += amount
        transactionHistory.append("Deposit \(balance)")
    }
    func withdraw(_ amount: Double){
        balance -= amount
        transactionHistory.append("Withdraw \(balance)")
    }
}

let myAccount = BankAccount(owner: "Salim")
myAccount.deposit(2)
myAccount.withdraw(3)