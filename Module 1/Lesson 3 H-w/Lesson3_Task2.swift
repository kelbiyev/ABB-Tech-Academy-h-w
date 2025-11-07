//import UIKit

var numbers = [1, 2, 3, 4, 17, 18]

func divisibleBy3(_ numbers: [Int])
{
    for num in numbers
    {
        if num % 3 == 0
        {
            continue
        }

        if num == 17 
        {
            print("17 has reached")
            break
        }

        print("Number \(num) processed...")
    }
}

divisibleBy3(numbers)
