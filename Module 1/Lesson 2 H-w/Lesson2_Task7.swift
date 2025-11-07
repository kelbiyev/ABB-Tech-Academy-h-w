//import UIKit

var gradesClassify = [95, 80, 100, 67, 88, 92]
for gradesCycle in gradesClassify
{
    if gradesCycle <= 100 && gradesCycle >= 90
	{
        print("\(gradesCycle): Excellent")
    } 
	else if gradesCycle < 90 && gradesCycle >= 80 
	{
        print("\(gradesCycle): Good")
    } 
	else 
	{
        print("\(gradesCycle): Needs Improvement")
    }
}

print("")

var optionalGrades: [Int?] = [95, 80, nil, 67, 88]
for og in optionalGrades
{
	if let g = og
	{
		print("Optional grade: \(g)")
	}
	else
	{
		print("Nil")
	}
}

print("")

var sum = 0
var count = 0
for opt in optionalGrades
{
	if let j = opt
	{
		sum += j
		count += 1
	} 
}

var avg: Double = 0
if count == 0
{
	avg = 0
	print("Average:" , avg)
}
else
{
	avg = Double(sum) / Double(count)
	print("Average:", avg)
}

print("")

var someGrades: [Int] = []
for grade in optionalGrades
{
    guard let gr = grade else {
        print("Trying to catch nil value and continuing")
        continue        
    }
    print("Processing grade: \(gr)")
    someGrades.append(gr)
}

print("")

if avg >= 80
{
    print("Overall performance: GOOD , avg grade: \(avg)")
}
else
{
    print("Needs Improvement, avg grade: \(avg)")
}
