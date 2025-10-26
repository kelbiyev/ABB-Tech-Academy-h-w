//import UIKit

enum OrderStatus 
{
    case preparing
    case onTheWay(driverName: String)
    case delivered(time: Int)
    case cancelled(reason: String)
}


func printOrderStatus(_ status: OrderStatus) 
{
    switch status {
    case .preparing:
        print("Order is prepairing.")
    case .onTheWay(let driverName):
        print("Order confirmed, driver \(driverName) is on the way.")
    case .delivered(let time):
        print("Order has been delivered in \(time) minutes.")
    case .cancelled(let reason):
        print("Order cancelled. Reason: \(reason).")
    }
}


let order1 = OrderStatus.preparing
let order2 = OrderStatus.onTheWay(driverName: "Daniil")
let order3 = OrderStatus.delivered(time: 45)
let order4 = OrderStatus.cancelled(reason: "The client did not respond")

printOrderStatus(order1)
printOrderStatus(order2)
printOrderStatus(order3)
printOrderStatus(order4)
