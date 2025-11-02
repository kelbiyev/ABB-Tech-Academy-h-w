//import UIKit

struct Workout {
    var type: String
    var duration: Int 
    var caloriesBurnedPerMinute: Double
    

    var totalCalories: Double {
        return Double(duration) * caloriesBurnedPerMinute
    }
    
    
    mutating func extend(by minutes: Int) {
        duration += minutes
    }
    
    
    var intensityLevel: String {
        switch totalCalories {
        case ..<200:
            return "Light"
        case 200...400:
            return "Moderate"
        default:
            return "Intense"
        }
    }
    
    
    func summary() -> String {
        return """
        Workout: \(type)
        Duration: \(duration) minutes
        Total Calories: \(totalCalories)
        Intensity: \(intensityLevel)
        \n
        """
    }
}


var workouts = [
    Workout(type: "Push-ups", duration: 10, caloriesBurnedPerMinute: 15.0),
    Workout(type: "Pull-ups", duration: 15, caloriesBurnedPerMinute: 9.0),
    Workout(type: "Running", duration: 60, caloriesBurnedPerMinute: 20.0)
]


workouts[0].extend(by: 15)


for workout in workouts {
    print(workout.summary())
}
