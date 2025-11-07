//import UIKit

func startWorkout(
    exercises: [String],
    onProgress: (String) -> Void,
    onComplete: () -> Void
) {
    print("Starting workout...\n")
    
    for exercise in exercises 
    {
        onProgress(exercise)
    }
    
    onComplete()
}

let workoutPlan = ["Push-ups", "Squats", "Plank", "Burpees"]

startWorkout(
    exercises: workoutPlan,
    onProgress: { exercise in
        print("Doing \(exercise)...")
    },
    onComplete: {
        print("\nWorkout complete! Great job!")
    }
)
