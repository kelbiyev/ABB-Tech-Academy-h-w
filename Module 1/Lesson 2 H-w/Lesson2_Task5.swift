//import UIKit

for number in 1...10 
{
	if number % 2 == 0
	{
		print("\(number) is even")
	}
	else
	{
		print("\(number) id odd")
	}
}

print("")

var num = 1
var iter = 0
while num <= 1000
{
	num *= 2
	iter += 1 
}

print("Iterations: \(iter)\n")


var i = 0
repeat {
	i += 1
	print("Processing...")
} while i < 3

print("")

var checkSign = -50
if checkSign > 0
{
	print("\(checkSign) is positive")
}
else if checkSign < 0
{
	print("\(checkSign) is negative")
}
else
{
	print("\(checkSign) is zero")
}