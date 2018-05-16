/*:
 
 ## Inheritance
 
 Inheritance allow a given class to inherit properties and methods from another. The class that inherits is called the **subclass**, the class it inherits from is called the **superclass**. "Inheritance is a fundamental behavior that differentiates classes from other types in Swift."
 
 Here is an example:
 
 */
class Pet {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeNoise() -> String {
        return ""
    }
}
/*:
 
 The `Dog` class inherits from the `Animal` class.
 We can override the superclass behavior.
 
 */
class Dog: Pet {
    override func makeNoise() -> String {
        return "Ouaf"
    }
}
/*:
 
 Here we are instantiating a `Dog` type by using the `Animal` initializer.

 */
let dog = Dog(name: "Médor")
dog.makeNoise() // "Ouaf"
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
