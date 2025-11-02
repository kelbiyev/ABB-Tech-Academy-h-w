class City {
    var name: String
    var mayor: (() -> Void)?
    
    init(name: String) { self.name = name }
    deinit { print("City \(name) deinited") }
}

func simulate() {
    var city: City? = City(name: "Baku")
    city?.mayor = { [weak city] in
    guard let city else { return }
        print("Mayor of \(city?.name ?? "Unknown") speaks.")
    }
    city = nil
}

simulate()