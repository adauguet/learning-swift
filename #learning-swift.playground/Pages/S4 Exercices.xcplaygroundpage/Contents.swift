import Foundation
/*:
 
 ## \# 1
 
 Write a "power" function such as `power(2, 3) == 8, `power(3, 2) == 9`, etc.
 */
func power(_ number: Double, _ power: Int) -> Double {
    // Replace the body by your implementation
    return 0
}
//: Here are a few test case, they should all evaluate to true:
power(2, 3) == 8
power(3, 2) == 9
power(4, 5) == 1024
/*:
 
 ## \# 2
 
 - Define a `Player` class.
 - Add a `name` property of type `String` to the `Player` class. Do not forget to implement `init`!
 - Add a `number` property of type `Int` to the `Player` class.
 - Define a `Position` enum with the following cases: `goalkeeper`, `defender`, `midfielder`, `forward`.
 - Add a `position` property of the `Position` to the `Player` class.
 - Define a `Team` class with the following properties: `name` of type `String`, `players` as an array of `Player`.
 - Instantiate a team with a few players.
 */
/*:
 
 ## \# 3
 
 - Define a `User` class.
 - Add a `name` property of type `String`. Implement the `init` accordingly.
 
 Our user should have a unique identifier. We can use the `UUID` type that is available in `Foundation`. You can find its documentation [here](https://developer.apple.com/documentation/foundation/uuid).
 - Add an `id` property of type `UUID`. Instantiate it according to the documentation.
 - Note: You may get strange UUID values when using online Swift playground.
 */
