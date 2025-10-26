//import UIKit


enum PowerState: String {
    case off = "Power Off"
    case sleep = "Sleep Mode"
    case on = "Active Mode"
    case overheated = "Overheated"
}

func describeState(state: PowerState) 
{
    switch state {
    case .off:
        print("System is now \(state.rawValue). All functions are stopped.") 
    case .sleep:
        print("System entering \(state.rawValue)...")
        describeState(state: .on) 
    case .on:
        print("System is \(state.rawValue)! Running at full power.")   
    case .overheated:
        print("Warning! Device is \(state.rawValue). Shutting down for safety.")
    }
}

describeState(state: .off)
print("")
describeState(state: .sleep)
print("")
describeState(state: .on)
print("")
describeState(state: .overheated)
