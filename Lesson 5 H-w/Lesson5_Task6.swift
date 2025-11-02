//import UIKit

struct Library {
    var books: [String: Int] {
        didSet {
            for (title, newValue) in books {
                if let oldValue = oldValue[title], oldValue != newValue {
                    print("'\(title)' stock changed: \(oldValue) → \(newValue)")
                }
            }
        }
    }
    
    lazy var totalBooks: Int = {
        print("Calculating total number of books...")
        return books.values.reduce(0, +)
    }()

    mutating func updateStock(for title: String, to newCount: Int) {
        if books[title] != nil {
            books[title] = newCount
        } else {
            print("Book '\(title)' not found in library.")
        }
    }

    func filterBooks(using condition: (String) -> Bool) -> [String] {
        return books.keys.filter(condition)
    }
}

var schoolLibrary = Library(books: [
    "Swift Programming": 5,
    "Science Today": 8,
    "Stories for Kids": 3,
    "Space Adventures": 6
])

print("Total books: \(schoolLibrary.totalBooks)")

print("Total books again: \(schoolLibrary.totalBooks)")

schoolLibrary.updateStock(for: "Science Today", to: 10)
schoolLibrary.updateStock(for: "Stories for Kids", to: 5)

let filtered = schoolLibrary.filterBooks { $0.hasPrefix("S") }
print("Books starting with 'S': \(filtered.count) , \(filtered) ")
