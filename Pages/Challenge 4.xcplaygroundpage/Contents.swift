//: [Previous](@previous)

import Foundation

/*
 Does one string contain another?

 Write your own version of the contains() method on String that ignores letter case, and
    without using the existing contains() method.

 Sample input and output
    • The code "Hello, world".fuzzyContains("Hello") should return true.
    • The code "Hello, world".fuzzyContains("WORLD") should return true. • The code "Hello, world".fuzzyContains("Goodbye") should return false.
 */

// My solution: doesn't work
extension String {
    func ownContainsA(_ string: String) -> Bool {
        if self.range(of: string) != nil {
            return true
        }
        return false
    }


}

extension String {
    func ownContainsB(_ string: String) -> Bool {
        range(of: string, options: .caseInsensitive) != nil
    }
}

let a = "Hello World".ownContainsA("hello")
let b = "Hello World".ownContainsB("hello")

print(a)
print(b)

//: [Next](@next)
