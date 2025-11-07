//import UIKit

class Product {
    var name: String
    var price: Double

    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }

    func productInfo() {
        print("\(name) - \(price.toCurrency())")
    }
}

class Electronic: Product  , Discountable{
    var warrantyYears: Int

    init(name: String, price: Double, warrantyYears: Int) {
        self.warrantyYears = warrantyYears
        super.init(name: name, price: price)
    }

    override func productInfo() {
        print("\(name) - \(price.toCurrency()) (\(warrantyYears) years warranty)")
    }
}

class Clothing: Product  , Discountable{
    var size: String

    init(name: String, price: Double, size: String) {
        self.size = size
        super.init(name: name, price: price)
    }

    override func productInfo() {
        print("\(name) - \(price.toCurrency()) (Size: \(size))")
    }
}

protocol Discountable {
    func applyDiscount(_ percent: Double) -> Double
    var discountInfo: String { get }
}

extension Discountable where Self: Product {
    func applyDiscount(_ percent: Double) -> Double {
        let discountAmount = price * (percent / 100)
        return price - discountAmount
    }

    var discountInfo: String {
        return "Discount applied"
    }
}

extension Double {
    func toCurrency() -> String {
        return "$\(self)"
    }
}

extension Product {
    func priceWithTax(_ rate: Double) -> Double {
        return price + (price * (rate / 100))
    }
}

let laptop = Electronic(name: "MacBook Air", price: 1200.0, warrantyYears: 2)
let tshirt = Clothing(name: "Basic T-Shirt", price: 25.0, size: "M")


laptop.productInfo()
tshirt.productInfo()
print(laptop.discountInfo)

let discountedPrice = laptop.applyDiscount(10)
print("Price after 10% discount: \(discountedPrice.toCurrency())")

let priceWithTax = laptop.priceWithTax(15)
print("Price with 15% tax: \(priceWithTax.toCurrency())")
