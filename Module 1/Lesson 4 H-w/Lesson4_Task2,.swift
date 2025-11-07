//import UIKit

func updateStock(_ stock: inout [String: Int], product: String, sold: Int) 
{
    if let currentStock = stock[product] 
    {
        if currentStock >= sold 
        {
            stock[product] = currentStock - sold
        } 
        else 
        {
            stock[product] = 0
            print("Not enough \(product) in stock!")
        }
    } 
    else 
    {
        print("\(product) not found in inventory.")
    }
}

var stock = ["Apple": 10, "Banana": 4, "Orange": 0]

updateStock(&stock, product: "Banana", sold: 3)
updateStock(&stock, product: "Apple", sold: 12)
updateStock(&stock, product: "Kiwi", sold: 1)

print(stock)