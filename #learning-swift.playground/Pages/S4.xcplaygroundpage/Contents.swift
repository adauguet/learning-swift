/*:
 ## Classes and structures
 
 Classes and structures allow you to create your own types.
 
 They both can:
 - Define properties to store values
 - Define methods to provide functionality
 - Define initializers to set up their initial state
 
 Here is the Counter class example:
 */
class Counter {
    var count = 0
    
    func increment(by amount: Int = 1) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}
/*:
 Initialization
 */
let counter = Counter()
/*:
 Call methods
 */
counter.increment()
/*:
 Access properties
 */
counter.count
//:
counter.reset()
counter.increment(by: 10)
counter.count
/*:
 Classes are reference types
 */
let anotherCounter = counter
anotherCounter.increment(by: 20)
anotherCounter.count
counter.count
/*:
 Here is a User structure example:
 */
import Foundation
struct User {
    let firstName: String
    let lastName: String
    let birthday: Date
    
    var age: Int {
        return Calendar.current.dateComponents([.year], from: birthday, to: Date()).year!
    }
    
    var description: String {
        return "\(firstName) \(lastName), \(age) years old."
    }
}
/*:
 Structures have default initializers
 */
let birthday = DateComponents(calendar: .current, year: 1987, month: 5, day: 10).date!
let user = User(firstName: "Antoine", lastName: "DAUGUET", birthday: birthday)
/*:
 Access computed properties
 */
user.description
/*:
 Example of usage
 */
func helloMessage(user: User) -> String {
    return "Hello, \(user.firstName)!"
}
helloMessage(user: user)
