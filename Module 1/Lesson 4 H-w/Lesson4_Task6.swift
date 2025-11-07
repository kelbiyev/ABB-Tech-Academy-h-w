//import UIKit

func processPayment(
    amount: Double,
    onSuccess: () -> Void,
    onFailure: () -> Void
) {
    if amount > 0 {
        onSuccess()
    } else {
        onFailure()
    }
}

processPayment(
    amount: 150.0,
    onSuccess: {
        print("Payment successful! Amount processed.")
    },
    onFailure: {
        print("Payment failed. Invalid amount.")
    }
)
