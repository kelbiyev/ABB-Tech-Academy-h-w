//import UIKit

class Workout {
    var name: String
    var duration: Int 

    init(name: String, duration: Int) {
        self.name = name
        self.duration = duration
    }

    func summary() {
        print("Workout: \(name) - \(duration) min")
    }
}

class RunningWorkout: Workout {
    var distance: Double

    init(name: String, duration: Int, distance: Double) {
        self.distance = distance
        super.init(name: name, duration: duration)
    }

    override func summary() {
        print("Workout: \(name) - \(duration) min - Distance: \(distance) km")
    }
}

class YogaWorkout: Workout {
    var difficulty: String

    init(name: String, duration: Int, difficulty: String) {
        self.difficulty = difficulty
        super.init(name: name, duration: duration)
    }

    override func summary() {
        print("Workout: \(name) - \(duration) min - Difficulty: \(difficulty)")
    }
}

protocol CalorieCalculable {
    func calculateCalories() -> Double
    var calorieInfo: String { get }
}

extension CalorieCalculable {
    func calculateCalories() -> Double {
        return Double.random(in: 100...300)
    }

    var calorieInfo: String {
        let calories = calculateCalories()
        let roundedCalories = (calories * 10).rounded() / 10  // округление до 1 знака
        return "Calories burned: \(roundedCalories)"
    }
}

extension RunningWorkout: CalorieCalculable {}
extension YogaWorkout: CalorieCalculable {}

extension Workout {
    var isLongWorkout: Bool {
        return duration >= 60
    }

    func motivationMessage() {
        print("Keep going! You can do it!")
    }
}

let run = RunningWorkout(name: "Morning Run", duration: 45, distance: 6.5)
let yoga = YogaWorkout(name: "Evening Yoga", duration: 75, difficulty: "Intermediate")

run.summary()
print(run.calorieInfo)
run.motivationMessage()
print()

yoga.summary()
print(yoga.calorieInfo)
yoga.motivationMessage()
