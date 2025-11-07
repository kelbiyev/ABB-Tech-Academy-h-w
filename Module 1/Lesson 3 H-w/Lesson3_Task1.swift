//import UIKit 

enum DayType: String
{
    case weekday = "Weekday"
    case weekend = "Weekend"
}

func whichDayType(for day: String) -> DayType
{
    switch day {
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
        print("It's a weekday.")
        return .weekday
    case "Saturday", "Sunday":
        print("It's a weekend.")
        return .weekend
    default:
        print("Unknown day")
        return .weekday
    }
}

let exmpl1 = whichDayType(for: "Monday")
print("Raw value of Monday: \(exmpl1.rawValue)")

let exmpl2 = whichDayType(for: "Sunday")
print("Raw value of Sunday: \(exmpl2.rawValue)")
