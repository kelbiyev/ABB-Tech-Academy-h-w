//import UIKit

func updateSteps(_ users: inout [(steps: Int, goal: Int)]) 
{
    for i in 0..<users.count 
    {
        if users[i].steps >= users[i].goal 
        {
            print("User \(i + 1): Goal reached!")
        } 
        else 
        {
            users[i].steps += 1000
            print("User \(i + 1): +1000 steps added!")
        }
    }
}

var usersData = [
    (steps: 8000, goal: 10000),
    (steps: 12000, goal: 10000),
    (steps: 9500, goal: 10000)
]

updateSteps(&usersData)

print(usersData)