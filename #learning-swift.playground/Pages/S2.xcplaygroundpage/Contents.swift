/*:
 ## Arrays
 
 Arrays are ordered collections.
 
 An array is defined with the following syntax:
 */
let integers: [Int] = [1, 2, 3]
/*:
 Array type can also be inferred:
 */
let otherIntegers = [4, 5, 6]
otherIntegers.count // 3
/*:
 An empty array can be defined, but you have to specify its type.
 */
let emptyArray: [Float] = []
emptyArray.isEmpty
/*:
 When arrays are defined as `var`, they become mutable!
 */
var names = ["Matthieu", "Paul", "Rita"]
names.append("Claire")
names.count // 4
/*:
 Operators can be used to manipulate arrays.
 */
[1, 2] + [3, 4] // [1, 2, 3, 4]
names += ["Antoine"]
/*:
 - Important:
 Arrays are 0 indexed.
 
 Here are various access and modification examples.
 */
names[0] // "Matthieu"
names[1...3] // ["Paul", "Rita", "Claire"]
names.first
[].first
[].last
names.removeLast()
names[1] = "Julien"
/*:
 You can iterate over an array using a `for in` loop.
 */
for name in names {
    print(name)
}
/*:
 ## Dictionaries
 
 Dictionaries are key/value pairs collection.
 
 Here are some examples where the type is inferred:
 */
let stocksNames = [
    "AAPL" : "Apple",
    "TSLA" : "Tesla",
    "AMZN" : "Amazon",
    "FB" : "Facebook",
]
let stocksValues = [
    "AAPL" : 172.77,
    "TSLA" : 304.18,
    "AMZN" : 1555.86,
    "FB" : 160.06,
]
/*:
 You can define an empty dictionary with the following syntax:
 */
let emptyDictionary: [String : Any] = [:]
let anotherEmptyDictionary = [String : Any]()
/*:
 Dictionaries become mutable with the `var` keyword.
 */
var person: [String : Any] = [
    "firstName" : "John",
    "lastName" : "Doe",
    "age" : 56,
]
person["age"] = 57
person["height"] = 1.75
/*:
 You can iterate on the dictionary with the following syntax:
 */
for (key, value) in person {
    print(key, value)
}
/*:
 ## For
 
 `for in` loops are used to loop on a collection, or to loop a given number of times.
 
 Here are a few examples:
 */
for name in names {
    print(name)
}
//:
for integer in 1...10 {
    print(integer)
}
//:
var helloMessage = ""
for _ in 1...3 {
    helloMessage += "Toc"
}
helloMessage
//:
for character in "Hello" {
    print(character)
}
/*:
 ## While
 
 `while` loops are used to loop an unknown number of times.
 */
var number = 0
while number < 10 {
    number += 1
}
number // 10
/*:
 - Important:
 `while` loops can lead to infinite loops!
 */
// while true {
//   print("infinite loops")
// }
/*:
 ## If
 
 The `if` statement conditions an execution to a boolean expression.
 */
var temperatureMessage: String?
var temperature = 18
if temperature < 3 {
    temperatureMessage = "Risque de verglas !"
}
/*:
 You can add an `else` clause to execute a statement if the condition is not fullfilled.
 */
if temperature < 3 {
    temperatureMessage = "Risque de verglas"
} else {
    temperatureMessage = nil
}
/*:
 You can also add mutliple `if` statements to handle multiple cases.
 */
if temperature < 0 {
    temperatureMessage = "Attention verglas !"
} else if temperature < 3 {
    temperatureMessage = "Risque de verglas"
} else {
    temperatureMessage = nil
}
/*:
 ## Switch
 
 The `switch` statement allows you to easily handle multiple if statements.
 */
var capitalCity: String?
let country = "France"
switch country {
case "France":
    capitalCity = "Paris"
case "United Kingdom", "UK":
    capitalCity = "London"
case "Germany":
    capitalCity = "Berlin"
default:
    capitalCity = "Other"
}
capitalCity // "Paris"
//:
temperature = -19
switch temperature {
case ..<0:
    print("too cold")
case 0..<15:
    print("cold")
case 15..<35:
    print("warm")
default:
    print("hot")
}
/*:
 ## Functions
 
 "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to "call" the function to perform its task when needed."
 
 A function is defined with the following syntax:
 */
func welcome(name: String) -> String {
    return "Welcome, \(name)!"
}
/*:
 And you call a function like this:
 */
welcome(name: "Juliette")
/*:
 A function can be define without parameters.
 */
func sayHello() -> String {
    return "Hello!"
}
sayHello()
/*:
 A function can be defined with multiple parameters.
 */
func welcome(firstName: String, lastName: String) -> String {
    return "Welcome, \(firstName) \(lastName)!"
}
welcome(firstName: "Emmanuel", lastName: "Macron")
/*:
 A function can be defined without return value.
 */
func welcomePrint(name: String) {
    print("Welcome, \(name)")
}
welcomePrint(name: "Brigitte")
/*:
 A local parameter name can be defined.
 */
func welcome(name: String, from city: String) -> String {
    return "Welcome, \(name) from \(city)!"
}
welcome(name: "Alex", from: "Bordeaux")
/*:
 A default value can be defined.
 */
func goodbye(name: String = "stranger") -> String {
    return "Goodbye, \(name)!"
}
goodbye()
/*:
 A function has a type made of its signature.
 
 This means that you can pass functions as parameters.
 */
type(of: goodbye)
/*:
 ## Closures
 */
var sortedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})
sortedNames.sorted(by: { (s1: String, s2: String) -> Bool in return s1 < s2 })
sortedNames.sorted(by: { s1, s2 in return s1 < s2 })
sortedNames.sorted(by: { s1, s2 in s1 < s2 })
sortedNames.sorted(by: { $0 < $1 })
sortedNames.sorted(by: <)

// Trailing closure
func trailingClosureExample(closure: (String) -> Int) {
    // function body
}

trailingClosureExample(closure: { string in
    return string.count
})

trailingClosureExample { string in
    return string.count
}

sortedNames.sorted {
    $0 < $1
}

let integersToMap = [1, 2, 7, 4]
let result = integersToMap.map {
    String($0)
}
let otherResult = integersToMap.map(String.init)

// Capturing values
var totalAmount = 0
func increment(by amount: Int) {
    totalAmount += amount
}
increment(by: 10)
totalAmount
increment(by: 100)
totalAmount

// ------------
// Enumerations
// ------------

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

// Switch statement
let planet = Planet.earth
switch planet {
case .earth:
    "Our planet !!"
case .venus, .saturn, .uranus:
    "Too far."
case .mars:
    "We've never been there... yet!"
default:
    "Never heard of it."
}

// Associated values
enum UserRoute {
    case create([String : Any])
    case read(id: String)
    case update(id: String, [String : Any])
    case delete(id: String)
}

enum SerializationError {
    case invalid
    case missing(field: String)
}

// Raw values (implicit)
enum Day: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}
Day.wednesday.rawValue

enum CompassPoint: String {
    case north
    case south
    case west
    case east
}
CompassPoint.south.rawValue
CompassPoint(rawValue: "east")
CompassPoint(rawValue: "🤔")

// ----------------------
// Classes and Structures
// ----------------------

// Structures
// ----------

struct SomeStructure {
    
}

import Foundation

// Define properties to store values (stored properties)
// Define methods to provide functionality
struct Point {
    let x: Double
    let y: Double
    
    func distance(to point: Point) -> Double {
        return sqrt(pow(point.x - x, 2) + pow(point.y - y, 2))
    }
}

// Memberwise initializer
let pointA = Point(x: 1, y: 2)

// Accessing properties
pointA.x

// Structures are value types
struct Entity {
    var value: Int
}
var entity1 = Entity(value: 1)
let entity2 = entity1
entity1.value = 2
entity1.value
entity2.value

let pointB = Point(x: 2, y: 3)
pointA.distance(to: pointB)

// Computed properties
struct Vector {
    let from: Point
    let to: Point
    
    var norm: Double {
        return from.distance(to: to)
    }
}

let vectorA = Vector(from: pointA, to: pointB)
vectorA.norm
