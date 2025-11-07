//import UIKit

func checkAttendance(for students: [String: Int]) {
    for (name, attendance) in students {
        if attendance < 75 {
            print(" \(name) — Failed to meet attendance requirement (\(attendance)%)")
        } else {
            print(" \(name) — Attendance OK (\(attendance)%)")
        }
    }
}


let studentAttendance: [String: Int] = [
    "Ann": 92,
    "Joe": 70,
    "Michael": 80,
    "Max": 65
]


checkAttendance(for: studentAttendance)
