//import UIKit

var accounts: [String: Double] = [
    "Salim": 1500.75,
    "Aliya": 320.50,
    "Tair": 980.00
]


func checkBalance(of customer: String, in accounts: [String: Double]) 
{
    
    if let balance = accounts[customer] 
    {
        print("Customer's balance \(customer): \(balance)")
    } 
    else 
    {
        print(" \(customer) named customer's account was not found")
    }
}


checkBalance(of: "Salim", in: accounts)
checkBalance(of: "Sabina", in: accounts)
