//import UIKit

let usernames = ["swiftdev", "ios_coder", "root", "guest123", ""]

for username in usernames
{
    if username.isEmpty
    {
        print("\(username): Username is invalid (empty)")
        continue
    }
    if username.count < 5
    {
        print("\(username): Username is invalid (has less than 5 characters)")
        continue
    }
    if username.hasPrefix("root")
    {
        print("\(username): Username is invalid (Restricted prefix)")
        continue
    }
    print("\(username): Username is valid")
}