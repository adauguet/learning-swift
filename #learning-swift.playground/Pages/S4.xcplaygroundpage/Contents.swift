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
