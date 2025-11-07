//import UIKit


func fixNegativeBalances(inout balances: [Double]) 
{
    for i in 0..<balances.count 
    {
        if balances[i] < 0 
        {
            balances[i] = 0
        }
    }
}


var userBalances = [120.5, -45.3, 300.0, -10.0]
print("Before fix: \(userBalances)")

fixNegativeBalances(&userBalances)

print("After fix:  \(userBalances)")