//import UIKit

enum AttendanceLevel {
    case perfect
    case acceptable
    case poor
}

func describeAttendance(_ level: AttendanceLevel) 
{
    switch level {
    case .perfect:
        print("Excellent attendance! Keep it up.")
    case .acceptable:
        print("Satisfactory attendance. Try to attend more.")
    case .poor:
        print("Attendance needs improvement.")
    }
}

let level1 = AttendanceLevel.perfect
let level2 = AttendanceLevel.acceptable
let level3 = AttendanceLevel.poor

describeAttendance(level1)
describeAttendance(level2)
describeAttendance(level3)
