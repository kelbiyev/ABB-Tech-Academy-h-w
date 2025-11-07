//import UIKit

var cityTemperatures: [String: [Double]] = [
    "Moscow": [12.5, 14.0, 10.8],
    "Saint-Petersburg": [9.2, 11.5, 10.0],
    "Kazan": [13.0, 15.3, 14.8],
    "Sochi": [20.5, 21.2, 22.0]
]

func summaryCityTemperatures(_ data: [String: [Double]]) 
{
    var highestCity = ""
    var highestTemp: Double = 0
    
    for (city, temps) in data 
    {
        let avg: Double = temps.reduce(0, +) / Double(temps.count)
        let maxTemp: Double = temps.max() ?? 0
        print("\(city): average temperature = \(avg)C, max = \(maxTemp)C")


        
        if maxTemp > highestTemp 
        {
            highestTemp = maxTemp
            highestCity = city
        }
    }
    
    print("\nThe city with the highest temperature was \(highestCity): \(highestTemp)C")
}

summaryCityTemperatures(cityTemperatures)
