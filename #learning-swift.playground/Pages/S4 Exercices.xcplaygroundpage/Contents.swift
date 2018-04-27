import Foundation
/*:
 
 ## \# 1
 
 Write a "power" function such as `power(2, 3) == 8, `power(3, 2) == 9`, etc.
 
 */
func power(_ number: Double, _ power: Int) -> Double {
    // Replace the body by your implementation
    return 0
}
/*:
 
 Here are a few test case, they should all evaluate to true:
 
 */
power(2, 3) == 8
power(3, 2) == 9
power(4, 5) == 1024
/*:
 
 - Note: The power function is already implemented in `Foundation`. You can use it to compare your results! Since it is defined for multiple types (`Float`, `Double`, ...), you may have to specify types.
 
 */
pow(2, 3) == 8
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
/*:
 
 ## \# 4
 
 - Define a `Point` structure with two properties `x` and `y` of type `Float`.
 - Define a `Vector` structure with two properties `origin` and `end` of type `Point`.
 - Implement a function `sum` that sums two vectors.
 
 */
/*:
 
 ## \# 5
 
 - Implement the body of the following method so that all tests resolve to true.
 
 */
func newMessages(count: Int? = nil) -> String {
    // Replace the body by your implementation
    return ""
}
newMessages(count: 1) == "You have 1 new message(s)."
newMessages() == "You do not have any new messages."
newMessages(count: 3) == "You have 3 new message(s)."
/*:
 
 - Now change your implementation so that those new tests resolve to true (previous tests should now fail).
 
 */
newMessages(count: 1) == "You have 1 new message."
newMessages() == "You do not have any new messages."
newMessages(count: 4) == "You have 4 new messages."
/*:
 
 ## \# 6
 
 - Implement a `Match` structure.
 - Add a `duration` property of type `Int`.
 - Add a `startDate` property of type `Date`. Make it optional.
 - Add a `start` method. What should this method do? Implement its body.
 - Implement a function `hasStarted` returning `true` or `false` if the match has started.
 - Refactor the `hasStarted` function by a computed variable.
 
 */
/*:
 
 ## \# 7
 
 - Define a `Day` enumeration representing days of the week: monday, tuesday, etc.
 - Implement a function `isWeekend` taking a `Day` parameter and returning a boolean. Make use of the `switch` statement.
 - Move the `isWeekend` function implementation on the type `Day` itself, meaning inside `Day` definition, after the `cases` statement.
 - By using `self`, refering to the instance, refactor the `isWeekend` function by a computed variable.
 
 */
