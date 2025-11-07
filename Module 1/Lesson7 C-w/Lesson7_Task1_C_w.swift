//import UIKit 

class User {
    var profile: Profile?
    deinit { print("User deinitialized") }
}

class Profile {
    weak var owner: User?
    deinit { print("Profile deinitialized") }
}

func run() {
    var user: User? = User()
    var profile: Profile? = Profile()
    
    user?.profile = profile
    profile?.owner = user
    
    user = nil
    profile = nil
}

run()