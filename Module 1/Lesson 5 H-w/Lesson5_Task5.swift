//import UIKit

class BankAccount {
    let owner: String
    private(set) var balance: Double {
        didSet {
            onBalanceChange?(balance)
        }
    }
    
    var onBalanceChange: ((Double) -> Void)?
    
    init(owner: String, balance: Double = 0.0) {
        self.owner = owner
        self.balance = balance
    }
    
    var isOverdrawn: Bool {
        return balance < 0
    }
    
    func deposit(amount: Double) {
        guard amount > 0 else {
            print("Deposit amount must be positive.")
            return
        }
        balance += amount
    }
    
    func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Withdrawal amount must be positive.")
            return
        }
        balance -= amount
    }
}

let account = BankAccount(owner: "Alice", balance: 1000.0)

account.onBalanceChange = { newBalance in
    print("New balance: \(newBalance)")
    if newBalance < 0 {
        print("Warning: Account is overdrawn!")
    }
}

account.deposit(amount: 500)
account.withdraw(amount: 200)
account.withdraw(amount: 1500)
account.deposit(amount: 300)
