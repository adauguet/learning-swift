import Foundation

class Counter {
    var count: Int
    
    init() {
        count = 0
    }
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

struct User {
    let firstName: String
    let lastName: String
    let age: Int
    
    var description: String {
        return "\(firstName) \(lastName), \(age) years old."
    }
}
