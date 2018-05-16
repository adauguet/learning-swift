import Foundation

/*:
 
 ## \# 1
 
 Implement the square function.
 
 */
func square(_ integer: Int) -> Int {
    // Replace the body by your implementation
    return integer * integer
}

square(2) // 4
/*
 
 ## \# 2
 
 Implement the following `initials` function.
 
 */
func initials(firstName: String, lastName: String) -> String {
    var result = ""
    if let firstNameCharacter = firstName.first {
        result += "\(firstNameCharacter)"
    }
    if let lastNameCharacter = lastName.first {
        result += "\(lastNameCharacter)"
    }
    return result
}

initials(firstName: "Édouard", lastName: "Philippe") // ÉP
