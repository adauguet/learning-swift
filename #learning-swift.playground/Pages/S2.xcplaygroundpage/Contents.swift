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
