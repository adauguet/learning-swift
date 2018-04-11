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
