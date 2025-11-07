//import UIKit 

enum TicketType {
    case economy
    case business
    case firstClass
}

struct Passenger {
    var name: String
    var ticketType: TicketType
}

class Flight {
    var flightNumber: String
    var seats: [String: Passenger?] {
        didSet {
            print("Seat assignment updated")
        }
    }

    var availableSeatsCount: Int {
        return seats.values.filter { $0 == nil }.count
    }

    lazy var checkInSummary: () -> Void = { [unowned self] in
        print("\nFlight \(self.flightNumber) - Passenger Manifest:")
        for (seat, passenger) in self.seats.sorted(by: { $0.key < $1.key }) {
            if let p = passenger {
                print("Seat \(seat): \(p.name) — \(p.ticketType)")
            } else {
                print("Seat \(seat): Empty")
            }
        }
    }

    init(flightNumber: String, seatNumbers: [String]) {
        self.flightNumber = flightNumber
        self.seats = Dictionary(uniqueKeysWithValues: seatNumbers.map { ($0, nil) })
    }

    func assignSeat(seat: String, passenger: Passenger) {
        if seats.keys.contains(seat) {
            seats[seat] = passenger
        } else {
            print("Seat \(seat) does not exist.")
        }
    }
}

let flight = Flight(flightNumber: "AZ101", seatNumbers: ["A1", "A2", "A3", "B1", "B2"])

let p1 = Passenger(name: "Salim Kalbiyev", ticketType: .economy)
let p2 = Passenger(name: "Hamza Valiyev", ticketType: .business)
let p3 = Passenger(name: "Omar Shikzadayev", ticketType: .firstClass)

flight.assignSeat(seat: "A1", passenger: p1)
flight.assignSeat(seat: "B1", passenger: p2)
flight.assignSeat(seat: "A3", passenger: p3)

print("\nAvailable seats: \(flight.availableSeatsCount)")

flight.checkInSummary()
