import Foundation

// The square function
func square(_ integer: Int) -> Int {
    return integer * integer
}
square(2)

// Compute initials
func initials(firstName: String, lastName: String) -> String {
    var result = ""
    if let first = firstName.first {
        result += "\(first)."
    }
    if let last = lastName.first {
        result += "\(last)."
    }
    return result
}
initials(firstName: "Antoine", lastName: "DAUGUET")
