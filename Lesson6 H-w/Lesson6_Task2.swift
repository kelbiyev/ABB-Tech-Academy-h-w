//import UIKit

class Course {
    var title: String
    var duration: Int

    init(title: String, duration: Int) {
        self.title = title
        self.duration = duration
    }

    func start() {
        print("Starting course: \(title)")
    }

    func courseInfo() {
        print("\(title) - \(duration) hours")
    }
}

class ProgrammingCourse: Course {
    var language: String
    var progress: Double

    init(title: String, duration: Int, language: String, progress: Double) {
        self.language = language
        self.progress = progress
        super.init(title: title, duration: duration)
    }

    override func courseInfo() {
        print("\(title) - \(duration) hours - Language: \(language)")
    }
}

class DesignCourse: Course {
    var tool: String
    var progress: Double

    init(title: String, duration: Int, tool: String, progress: Double) {
        self.tool = tool
        self.progress = progress
        super.init(title: title, duration: duration)
    }

    override func courseInfo() {
        print("\(title) - \(duration) hours - Tool: \(tool)")
    }
}


protocol ProgressTrackable {
    var progress: Double { get set }
    func updateProgress(_ amount: Double)
    func status() -> String
}

extension ProgressTrackable {
    func updateProgress(_ amount: Double) {
        
        print("Progress updated by \(amount)%")
    }

    func status() -> String {
        return "Progress: 0%" 
    }
}

extension ProgrammingCourse: ProgressTrackable {
    func updateProgress(_ amount: Double) {
        progress = min(progress + amount, 100)
    }

    func status() -> String {
        return "Progress: \(Int(progress))%"
    }
}

extension DesignCourse: ProgressTrackable {
    func updateProgress(_ amount: Double) {
        progress = min(progress + amount, 100)
    }

    func status() -> String {
        return "Progress: \(Int(progress))%"
    }
}

extension Course {
    var isLongCourse: Bool {
        return duration >= 20
    }

    func summary() -> String {
        return "\(title) is a \(isLongCourse ? "long" : "short") course."
    }
}

let swiftCourse = ProgrammingCourse(title: "Swift Fundamentals", duration: 25, language: "Swift", progress: 50)
let designCourse = DesignCourse(title: "UI Design", duration: 10, tool: "Figma", progress: 90)

swiftCourse.start()
swiftCourse.courseInfo()
swiftCourse.updateProgress(10)
print(swiftCourse.status())
print(swiftCourse.summary())
print()

designCourse.start()
designCourse.courseInfo()
designCourse.updateProgress(15)
print(designCourse.status())
print(designCourse.summary())
