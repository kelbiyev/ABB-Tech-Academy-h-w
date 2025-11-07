//import UIKit 

class Player {
    var name: String
    var level: Int
    var experience: Int 

    static let maxLevel: Int = 50

    var progress: Double {
        return (Double(level) / Double(Player.maxLevel)) * 100
    }

    lazy var reward: String = {
        switch level {
        case 0..<10:
            return "Beginner reward achieved"
        case 10..<25:
            return "Semi-pro reward achieved"
        case 25..<40:
            return "Pro reward achieved"    
        case 40..<50:
            return "Expert reward achieved"
        default:
            return "ULTRA MEGA SUPER EXPERT reward achieved"
            
        }
    }()

    private func levelUp(){
        let newLevel = experience / 1000 + 1
        if newLevel > level {
            level = min(newLevel, Player.maxLevel)
        }
    }
    init(name: String , level: Int = 0 , experience: Int = 0) {
        self.name = name
        self.level = level
        self.experience = experience
        levelUp()
    }

    
}

func closestToMaxLevel(from players: [Player]) -> Player? {
    return players.max(by: { $0.level < $1.level })
}

let player1 = Player(name:"'Salim'", experience: 45000) 
let player2 = Player(name:"'Tair'", experience: 49000)
let player3 = Player(name:"'Bro'", experience: 33000)

let players = [player1,player2,player3]
if let topPlayer = closestToMaxLevel(from: players) {
    print("Top player on the server \(topPlayer.name), level: \(topPlayer.level)")
}

print()
