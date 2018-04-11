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
 Functions are able to capture values outside of their scope.
 */
var totalAmount = 0
func increment(by amount: Int) {
    totalAmount += amount
}
increment(by: 10) // 10
increment(by: 100) // 110
/*:
 ## Closures
 
 A closure is an executable block that can be passed around.
 
 Here is an example with the `sort` function that takes a closure returning an order
 */
var numbers = [4, 2, 98, -76, 0, 5]
numbers.sort(by: { (integer1: Int, integer2: Int) -> Bool in
    return integer1 < integer2
})
/*:
 The syntax can be greatly simplified, as you can see in the following steps.
 
 Parenthesis around parameters can be omitted. Parameters types can be inferred.
 */
numbers.sort(by: { integer1, integer2 -> Bool in
    return integer1 < integer2
})
/*:
 Return type can be inferred too.
 */
numbers.sort(by: { integer1, integer2 in
    return integer1 < integer2
})
/*:
 The `return` keyword can be ommited too.
 */
numbers.sort(by: { integer1, integer2 in
    integer1 < integer2
})
/*:
 You do not even have to name parameters, you can juste use the special syntax `$` followed by the parameter index, starting at `0`.
 */
numbers.sort(by: { $0 < $1 })
/*:
 Finally, you can _sometimes_ pass the function as a closure.
 */
numbers.sort(by: <)
/*:
 ### Trailing closure
 
 You can pass a closure as a function parameter.
 */
func trailingClosureExample(closure: (String) -> Int) {
    let integer = closure("leboncoin")
    print(integer)
}
/*:
 Here is how you call this function.
 */
trailingClosureExample(closure: { string in
    return string.count
})
/*:
 The syntax can be nicely simplified.
 */
trailingClosureExample { string in
    return string.count
}
/*:
 We can also write our `sort` method with the trailing closure syntax.
 */
numbers.sort {
    $0 < $1
}
/*:
 ## Enumerations
 
 "An _enumeration_ defines a common type for a group of related values."
 
 Here is a basic enumeration representing planets of our solar system.
 */
enum Planet {
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}
/*:
 Switch statements work great with enumerations!
 */
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
/*:
 Values can be associated to cases in order to store additional information.
 */
enum UserRoute {
    case create(data: [String : Any])
    case read(id: String)
    case update(id: String, data: [String : Any])
    case delete(id: String)
}
//:
let route = UserRoute.read(id: "42")
switch route {
case .create(let data):
    print(data)
case .read(let id):
    print(id)
default:
    break
}
/*:
 Raw values can be associated to each case.
 
 Here our enum has a raw value Int type.
 */
enum Day: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
Day.wednesday.rawValue
/*:
 Raw values can be used to instantiate an enumeration.
 */
enum CompassPoint: String {
    case north
    case south
    case west
    case east
}
CompassPoint.south.rawValue
CompassPoint(rawValue: "east")
CompassPoint(rawValue: "🤔")
