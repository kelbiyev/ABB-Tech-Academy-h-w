//import UIKit 

let  temperatures: [Int?] = [22, nil, 18, 25, nil, 30, 27]

for temp in temperatures
{
    if let value = temp
    {
        print("Valid temperature: \(value)")
    }
    else
    {
        print("No data")
    }

}

print("")


var sum = 0
var count = 0

for temp in temperatures
{
    if let t = temp
    {
        sum += t
        count += 1
    }
}

if count > 0
{
    let avg = Double(sum) / Double(count)
    print("Average temperature: \(avg)")
}
else
{
    print("Average temperature: No valid data")
}



var maxTemp = Int.max
var minTemp = Int.min


for temp in temperatures
{
    if let t = temp
    {
        if t < minTemp
        {
            minTemp = t
        }
        if t > maxTemp
        {
            maxTemp = t
        }
    }
}

if minTemp != Int.max && maxTemp != Int.min
{
    print("Max Temp: \(maxTemp)")
    print("Min Temp: \(minTemp)")
}
else
{
    print("Min/Max: No valid data")
}

var cityConditions: [String: String?] = [
    "Baku": "Sunny",
    "London": "Rainy",
    "Oslo": "Cloudy",
    "Dubai": "Hot"
]

cityConditions["Paris"] = nil


for (city, condition) in cityConditions
{
    if let cond = condition
    {
        print("\(city): \(cond)")
    }
    else
    {
        print("\(city): No valid data")
    }
}

let avg = Double(sum)/Double(count)
let summary = (cityCount: cityConditions.count , totalValidTemps: count , averageTemp: avg)
print("Summary for Cities: \(summary.cityCount), Valid temps: \(summary.totalValidTemps), Average Temp: \(summary.averageTemp)")

if summary.averageTemp > 25 &&  cityConditions.values.contains("Hot")
{
    print("Heatwave warning!")
}
else
{
    print("Conditions normal.")
}
