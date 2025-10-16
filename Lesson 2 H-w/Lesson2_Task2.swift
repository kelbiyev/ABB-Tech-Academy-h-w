//import UIKit

var username = "swiftCoder"
username.append("123")

print(username)

var index = username.index(username.startIndex, offsetBy: 5)
username.insert("_", at: index)
print(username)

username.removeLast(3)
print(username)

var userHasPrefix = username.hasPrefix("swift")
var userHasSuffix = username.hasSuffix("123")

print("First: \(username.prefix(3)), Last: \(username.suffix(2))")