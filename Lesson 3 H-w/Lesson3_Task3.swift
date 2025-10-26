//import UIKit

enum Operation
{
    case add
    case substract
    case multiply
    case divide
}

func calculator(a: Double, b: Double, operation: Operation) -> Double?
{
    switch operation {
    case .add:
        return a + b
    case .substract:
        return a - b 
    case .multiply:
        return a * b
    case .divide:
        if b == 0 {
            print("Error: Division by ZERO isn't allowed")
            return nil
        }
        else 
        {
            return a / b    
        }
    }
}

if let exmpl1 = calculator(a: 3, b: 4, operation: .add)
{
    print(exmpl1)
}   
if let exmpl2 = calculator(a: 3, b: 4, operation: .substract)
{
    print(exmpl2)
}
if let exmpl3 = calculator(a: 3, b: 4, operation: .multiply)
{
    print(exmpl3)
}
if let exmpl4 = calculator(a: 3, b: 4, operation: .divide)
{
    print(exmpl4)
}