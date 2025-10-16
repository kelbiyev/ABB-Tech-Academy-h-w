//import UIKit

var appData = [
    "activeUsers" : 120, 
    "crashes": 3, 
    "updatesAvalaible": 1
]

if let crashes = appData["crashes"]
{
    if crashes < 5
    {
        print("App running smoothly")
    }
    else if crashes < 10 
    {
        print("Minor issues")
    }
    else
    {
        print("Critical problem")
    }
}

print("")

appData["feedbackScore"] = 4
print("\(appData)\n")

for (metric, value) in appData
{
    print("Metric: \(metric) - Value: \(value)")
}

print("")

print("Total metrics: \(appData.count)")