//import UIKit

func validateLogin(usernames: [String?], password: String?) {
    
    guard let password = password, password.count >= 6 else {
        print("Invalid credentials (password too short or missing).")
        return
    }
    
    
    let validUsernames = usernames.compactMap { username in
        return username
    }
    .filter { name in
        return !name.isEmpty
    }
    
    
    if validUsernames.isEmpty 
    {
        print("Invalid credentials (no valid usernames).")
    } 
    else 
    {
        print("Login ready! Users:")
        for name in validUsernames {
            print("- \(name)")
        }
    }
}


let usernames1: [String?] = ["Alice", nil, "Bob"]
let usernames2: [String?] = [nil, ""]
let usernames3: [String?] = [""]

validateLogin(usernames: usernames1, password: "secure123")
validateLogin(usernames: usernames2, password: "12345")
validateLogin(usernames: usernames3, password: nil)
