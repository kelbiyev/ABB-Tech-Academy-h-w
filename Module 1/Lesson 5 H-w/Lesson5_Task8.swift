//import UIKit

struct CryptoAsset {
    var symbol: String        
    var amount: Double        
    var priceUSD: Double      

    static let taxRate: Double = 0.1

    var valueUSD: Double {
        return amount * priceUSD
    }

    func profitCalculator(expectedPrice: Double) -> () -> Double {
        return {
            let grossProfit = (expectedPrice - self.priceUSD) * self.amount
            let netProfit = grossProfit * (1 - CryptoAsset.taxRate)
            return netProfit
        }
    }
}

let btc = CryptoAsset(symbol: "BTC", amount: 0.5, priceUSD: 110000)
let eth = CryptoAsset(symbol: "ETH", amount: 3, priceUSD: 2400)
let sol = CryptoAsset(symbol: "SOL", amount: 20, priceUSD: 180)

let portfolio = [btc, eth, sol]

let values = portfolio.map { $0.valueUSD }

let totalValue = values.reduce(0, +)

print("Portfolio total value: $\(totalValue)")
let btcProfitClosure = btc.profitCalculator(expectedPrice: 115000)
print("BTC profit after tax: $\(btcProfitClosure())")
