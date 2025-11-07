class Teacher {
     var student: Student?
    deinit { print("Teacher deinitialized") }
}

class Student {
    weak var teacher: Teacher?
    init(teacher: Teacher) { self.teacher = teacher }
    deinit { print("Student deinitialized") }
}

func run() {
    var teacher: Teacher? = Teacher()
    let student: Student? = Student(teacher: teacher!)
    
    teacher?.student = student
    teacher = nil
    student?.teacher
    // 💥 Crash 
}

run()