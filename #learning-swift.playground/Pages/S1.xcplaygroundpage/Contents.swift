/*:
 
 # #lbc-learning-swift
 
 ## Session 1 - 05/04/2018
 
 Resources
 * **The Swift Programming Language (Swift 4.1)** (free, available on iBooks)
 
 ## Introduction
 
 A few words about Swift
 * created by Apple in 2014
 * open-sourced in 2015
 * current version 4.1 (April 2018)
 * modern syntax and concepts
 * compiled (the compiler performs checks and optimizations)
 * powerfull
 * used in Apple ecosystem (iOS, watchOS, tvOS, macOS)
 * backend frameworks (Vapor, Kitura, ...)
 
 */
 print("Hello world!")
/*:
 ## Comments
 
 You can add comments in your code to help yourself and others.
 
 Comments are not compiled: they are removed before compilation.
 */
// This is a comment.
/*:
 ## Constants and variables

 Constants are declared with `let`.
 */
let message = "Hello world!"
/*:
 Here the type is inferred: the compiler can guess it is a String. This is called **type inference**.
 
 But the type can also be specified:
 */
let anotherMessage: String = "Hello again, world!"
/*:
 - Important:
 All types must be either defined of inferred.\
Types cannot be changed.
 
 Here is defined an inferred `Int` constant.
 */
let age = 30
/*:
 As all types, an `Int` can also be explicitly defined:
 */
let birthYear: Int = 1987
/*:
 Here a `Double` is inferred:
 */
let height = 1.80
/*:
 Constants are immutable: you cannot change their values once defined.
 
 Variables are declared with `var`.
 
 Here is defined a `Float` variable. Float type is specified to avoid `Double` inferrence.
 */
var weight: Float = 75
/*:
 Variables are mutable: their values can be changed.
 */
weight = weight + 1
weight += 2
/*:
 ## Booleans
 
 Possible values are `true` or `false`.
 
 They are very useful to represent yes/no, true/false, ...
 */
let isRaining = true
var hasEatenToday = false
/*:
 ## Optionals
 
 Optionals are values that can be `nil`, which means "no value".
 
 Optionals are declared with a question mark `?` following the type annotation.
 */
var weddingYear: Int?
/*:
 If no value is assigned to an optional, it is `nil`.
 
 You can assign a value to it.
 */
weddingYear = 2016
/*:
 Unwrapping an optional allows you to "open it" and use the value if there is any.
 
 You use is with the `if let` syntax:
 */
if let year = weddingYear {
    // `year` only exists here, inside brackets.
    print(year)
}
// you cannot use `year` here.
/*:
 When you are **absolutely sure** that the optional value is not `nil`, you can **force unwrap** the value.
 
 Force unwrapping is made by adding an exclamation mark `!` following the value.
 */
weddingYear!
/*:
 ## Operators
 
 Assignment `=`
 */
var x = 1
x = 2
/*:
 Arithmetic `+`, `-`, `*`, `/`
 */
1 + 2
4 - 6
5 * 3
8 / 4
/*:
 Remainder `%`
 */
5 / 2 // Careful here
5 % 2
/*:
 Compound Assignment `+=`, `-=`, `*=`
 */
x += 3
x -= 1
x *= 2
/*:
 Comparison `==`, `!=`, `>`, `<`, `>=`, `<=`
 */
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1
/*:
 Range `...` / `..<`
 
 Useful to loop a given number of times:

 */
1...5
1..<6
for integer in 1...5 {
    print(integer)
}
/*:
 Logical `!`, `&&`, `||`
 */
!true
true && false
true || false
/*:
 Parentheses
 */
1 + 2 * 3
(1 + 2) * 3
/*:
 ## Strings
 
 Strings are used to represent texts.
*/
let text = "Bonjour tout le monde !"
/*:
 Empty strings are defined with the following syntax:
 */
let emptyString = ""
/*:
 When defined with the `var` keyword, strings become mutable.
 */
var croissantage = "Je vous aime tous très fort."
croissantage += " Du coup j'amène les croissants lundi !"
/*:
 Strings are value types.
 */
var name = "Antoine"
var copy = name
name = "Benoît"
copy // "Antoine"
/*:
 String interpolation allows you to insert other types in strings.
 */
"\(name) is \(age) years old."
name + " is \(height)m tall."
